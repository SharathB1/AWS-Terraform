output "s3_bucket_name" {
  description = "Name of the created S3 bucket."
  value       = aws_s3_bucket.example.id
}

output "s3_bucket_website_endpoint" {
  description = "Website endpoint of the S3 bucket (if configured)."
  value       = aws_s3_bucket.example.website_endpoint
}
