variable "role_name" {
  description = "The name of the IAM role"
  type        = string
  default     = "myrole"
}

variable "assume_role_policy" {
  description = "The assume role policy document"
  type        = string
  default     = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ]
}
EOF
}

variable "tags" {
  description = "A map of tags to apply to the IAM role"
  type        = map(string)
  default = {
    tag-key = "tag-value"
  }
}
