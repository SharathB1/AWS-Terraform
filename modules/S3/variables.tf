variable "aws_region" {
  description = "AWS region where the S3 bucket will be created."
}

variable "bucket_name" {
  description = "Name of the S3 bucket."
}

variable "bucket_acl" {
  description = "Access control for the S3 bucket."
  default     = "private"  # You can change this to "public-read" or other ACL values.
}
