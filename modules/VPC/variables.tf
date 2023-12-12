variable "aws_region" {
  description = "AWS region for VPC"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
}

variable "vpc_name" {
  description = "Name for the VPC"
}

variable "public_subnet_cidr" {
  description = "List of public subnet CIDR blocks"
  type        = list(string)
}

variable "private_subnet_cidr" {
  description = "List of private subnet CIDR blocks"
  type        = list(string)
}

variable "availability_zone" {
  description = "List of availability zones"
  type        = string
  default     = "us-east-1a"
}




