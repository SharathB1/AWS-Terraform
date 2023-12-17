variable "repository_name" {
  description = "The name of the CodeCommit repository"
  type        = string
  default     = "MyTestRepository"
}

variable "repository_description" {
  description = "A description of the CodeCommit repository"
  type        = string
  default     = "This is the Sample App Repository"
}
