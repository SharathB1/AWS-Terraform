variable "region" {
  description = "AWS Region"
  type        = string
  default     = "us-west-2"
}

variable "vpc_cidr" {
  description = "CIDR for VPC"
  type        = string
}

variable "instance_count" {
  description = "Number of EC2 instances"
  type        = number
}

variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "db_allocated_storage" {
  description = "Allocated storage size for the RDS instance (in gigabytes)"
  type        = number
}

variable "db_storage_type" {
  description = "The storage type of the RDS instance"
  type        = string
}

variable "db_engine" {
  description = "The database engine to use (e.g., 'mysql', 'oracle-se2', 'sqlserver-ex')"
  type        = string
}

variable "db_engine_version" {
  description = "The engine version to use (e.g., '5.7' for MySQL 5.7)"
  type        = string
}

variable "db_instance_class" {
  description = "The instance type of the RDS instance (e.g., 'db.m4.large')"
  type        = string
}

variable "db_instance_db_name" {
  description = "The initial database name to be created in the DB instance"
  type        = string
}

variable "db_name" {
  description = "The name of the database to create when the DB instance is created"
  type        = string
}

variable "db_username" {
  description = "Username for the database"
  type        = string
}

variable "db_password" {
  description = "Password for the database"
  type        = string
  sensitive   = true
}

# Declare the variable for availability zones
variable "availability_zones" {
  description = "A list of availability zones in which to place the ELB"
  type        = list(string)
}
