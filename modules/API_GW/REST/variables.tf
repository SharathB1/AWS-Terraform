variable "api_name" {
  description = "The name of the API Gateway REST API"
  type        = string
  default     = "mytestAPI"
}

variable "api_description" {
  description = "The description of the API Gateway REST API"
  type        = string
  default     = "This is my API for test"
}

variable "resource_path_part" {
  description = "The path part for the API Gateway resource"
  type        = string
  default     = "mytestresource"
}
