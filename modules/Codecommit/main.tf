resource "aws_codecommit_repository" "myrepo" {
  repository_name = var.repository_name
  description     = var.repository_description
}

