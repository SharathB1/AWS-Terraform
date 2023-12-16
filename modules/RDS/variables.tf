variable "allocated_storage" {
  description = "The amount of storage (in gibibytes) to allocate to the DB instance"
  type        = number
  default     = 10
}

variable "db_name" {
  description = "The name of the initial database on the DB instance when it's created"
  type        = string
  default     = "myDB"
}

variable "instance_class" {
  description = "The instance class of the RDS instance"
  type        = string
  default     = "db.t3.micro"
}

variable "username" {
  description = "Username for the master DB user"
  type        = string
  default     = "admin"
}

variable "password" {
  description = "Password for the master DB user"
  type        = string
  default     = "password"
}

variable "subnet_ids" {
  description = "A list of private subnet IDs for the RDS instance"
  type        = list(string)
  default     = []
}
