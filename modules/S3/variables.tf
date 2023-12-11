variable "aws_region" {
  description = "AWS region where the S3 bucket will be created"
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Name of the s3 bucket"
}

variable "bucket_acl" {
  description = "Access control for the S3 bucket."
  default     = "private" # You can change this to "public-read" or other ACL values.
}
