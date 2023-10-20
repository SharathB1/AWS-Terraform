variable "aws_region" {
  description = "AWS region for VPC"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
}

variable "vpc_name" {
  description = "Name for the VPC"
}

variable "public_subnet_cidrs" {
  description = "List of public subnet CIDR blocks"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "List of private subnet CIDR blocks"
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}

variable "flow_log_log_group_name" {
  description = "Name of the CloudWatch Logs log group for Flow Logs"
  type        = string
}

variable "flow_log_log_group_arn" {
  description = "ARN of the CloudWatch Logs log group for Flow Logs"
  type        = string
}
