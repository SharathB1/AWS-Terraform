output "api_id" {
  description = "The ID of the created API Gateway REST API"
  value       = aws_api_gateway_rest_api.mytestAPI.id
}

output "resource_id" {
  description = "The ID of the created API Gateway resource"
  value       = aws_api_gateway_resource.mytestResource.id
}

output "resource_path" {
  description = "The path of the created API Gateway resource"
  value       = aws_api_gateway_resource.mytestResource.path
}
