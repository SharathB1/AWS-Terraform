output "db_endpoint" {
  description = "The DNS address of the RDS instance"
  value       = aws_db_instance.default.endpoint
}

output "db_port" {
  description = "The port on which the DB accepts connections"
  value       = aws_db_instance.default.port
}

output "db_instance_id" {
  description = "The RDS instance identifier"
  value       = aws_db_instance.default.id
}
