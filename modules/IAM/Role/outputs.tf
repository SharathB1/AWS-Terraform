output "role_arn" {
  description = "The Amazon Resource Name (ARN) of the IAM role"
  value       = aws_iam_role.my_role.arn
}

output "role_name" {
  description = "The name of the IAM role"
  value       = aws_iam_role.my_role.name
}

output "assume_role_policy" {
  description = "The assume role policy document"
  value       = aws_iam_role.my_role.assume_role_policy
}

output "tags" {
  description = "The tags applied to the IAM role"
  value       = aws_iam_role.my_role.tags
}
