output "web_acl_id" {
  description = "The ID of the created AWS WAF Web ACL."
  value       = aws_wafv2_web_acl.example.id
}

output "alb_dns_name" {
  description = "The DNS name of the created Application Load Balancer (ALB)."
  value       = aws_lb.example.dns_name
}
