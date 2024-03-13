output "web_instance_ids" {
  value = aws_instance.web.*.id
}

output "web_elb_dns_name" {
  value = aws_elb.web.dns_name
}

