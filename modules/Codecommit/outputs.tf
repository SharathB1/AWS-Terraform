output "repository_clone_url_http" {
  description = "The HTTP clone URL of the CodeCommit repository"
  value       = aws_codecommit_repository.myrepo.clone_url_http
}

output "repository_clone_url_ssh" {
  description = "The SSH clone URL of the CodeCommit repository"
  value       = aws_codecommit_repository.myrepo.clone_url_ssh
}

output "repository_arn" {
  description = "The Amazon Resource Name (ARN) of the CodeCommit repository"
  value       = aws_codecommit_repository.myrepo.arn
}
