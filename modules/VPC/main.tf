provider "aws" {
  region = var.aws_region
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "public" {
  count = length(var.public_subnet_cidrs)
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_cidrs[count.index]
  availability_zone = element(var.availability_zones, count.index)
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.vpc_name}-public-${count.index}"
  }
}

resource "aws_subnet" "private" {
  count = length(var.private_subnet_cidrs)
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_cidrs[count.index]
  availability_zone = element(var.availability_zones, count.index)
  tags = {
    Name = "${var.vpc_name}-private-${count.index}"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

resource "aws_security_group" "example" {
  name        = "example"
  description = "Example Security Group"
  vpc_id      = aws_vpc.main.id

  // Define your security group rules here
}

resource "aws_nat_gateway" "nat" {
  count = length(aws_subnet.private)

  allocation_id = aws_eip.nat[count.index].id
  subnet_id     = aws_subnet.private[count.index].id
}

resource "aws_eip" "nat" {
  count = length(aws_subnet.private)
}

resource "aws_flow_log" "vpc" {
  depends_on = [aws_vpc.main]
  count = length(var.private_subnet_cidrs)

  iam_role = aws_iam_role.flow_log.arn
  traffic_type = "ALL"
  log_group_name = var.flow_log_log_group_name
  subnet_id = aws_subnet.private[count.index].id
}

resource "aws_iam_role" "flow_log" {
  name = "flow_log_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "vpc-flow-logs.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_policy" "flow_log" {
  name        = "flow_log_policy"
  description = "IAM policy for VPC Flow Logs"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "logs:CreateLogGroup",
        Effect = "Allow",
        Resource = var.flow_log_log_group_arn
      },
      {
        Action = "logs:CreateLogStream",
        Effect = "Allow",
        Resource = "${var.flow_log_log_group_arn}:*"
      },
      {
        Action = "logs:PutLogEvents",
        Effect = "Allow",
        Resource = "${var.flow_log_log_group_arn}:*"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "flow_log" {
  policy_arn = aws_iam_policy.flow_log.arn
  role       = aws_iam_role.flow_log.name
}

