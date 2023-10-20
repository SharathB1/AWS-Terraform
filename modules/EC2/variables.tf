variable "aws_region" {
  description = "AWS region where the EC2 instance will be created."
}

variable "ami_id" {
  description = "ID of the Amazon Machine Image (AMI) for the EC2 instance."
}

variable "instance_type" {
  description = "Type of the EC2 instance."
}

variable "subnet_id" {
  description = "ID of the subnet where the EC2 instance will be launched."
}

variable "instance_name" {
  description = "Name for the EC2 instance."
}
