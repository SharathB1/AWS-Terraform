resource "aws_api_gateway_rest_api" "mytestAPI" {
  name        = var.api_name
  description = var.api_description
}

resource "aws_api_gateway_resource" "mytestResource" {
  rest_api_id = aws_api_gateway_rest_api.mytestAPI.id
  parent_id   = aws_api_gateway_rest_api.mytestAPI.root_resource_id
  path_part   = var.resource_path_part
}
