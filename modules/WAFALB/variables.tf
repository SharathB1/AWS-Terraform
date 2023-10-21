variable "aws_region" {
  description = "The AWS region where you want to create resources."
  type        = string
}

variable "web_acl_name" {
  description = "The name of the AWS WAF Web ACL."
  type        = string
}

variable "rule_group_name" {
  description = "The name of the AWS WAFv2 Rule Group to reference in the Web ACL."
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs where the ALB will be deployed."
  type        = list(string)
}
