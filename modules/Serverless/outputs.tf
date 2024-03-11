output "lambda_function_name" {
  value = aws_lambda_function.api_lambda.function_name
}

output "api_gateway_url" {
  value = "${aws_api_gateway_rest_api.api_gateway.execution_arn}/resource"
}

