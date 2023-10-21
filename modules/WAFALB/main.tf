
provider "aws" {
  region = var.aws_region
}

resource "aws_wafv2_web_acl" "example" {
  name        = var.web_acl_name
  description = "Example WAF Web ACL"
  scope       = "REGIONAL"

  default_action {
    block {}
  }

  rule {
    name     = "rule_example"
    priority = 1

    action {
      allow {}
    }

    statement {
      rule_group_reference_statement {
        name = aws_wafv2_web_acl.rule_group_example.name
      }
    }
  }
}

resource "aws_wafv2_rule_group" "rule_group_example" {
  name = var.rule_group_name
  scope = "REGIONAL"

  capacity {
    metric_name = "example-metric"
    version     = "WAFV2"
    size        = 100
  }

  rule {
    name     = "example_rule_1"
    priority = 1

    action {
      allow {}
    }

    statement {
      regex_pattern_set_reference_statement {
        arn = aws_wafv2_regex_pattern_set.example.arn
        field_to_match {
          single_header {
            name = "Host"
          }
        }
      }
    }
  }
}

resource "aws_wafv2_regex_pattern_set" "example" {
  name        = "example-regex-set"
  scope       = "REGIONAL"
  description = "Example regex pattern set"

  regular_expression {
    regex_string = "example.com"
  }
}

resource "aws_lb" "example" {
  name               = "example-alb"
  internal           = false
  load_balancer_type = "application"
  subnets            = var.subnet_ids

  enable_deletion_protection = false
  enable_http2              = true
  enable_cross_zone_load_balancing = true
}

resource "aws_lb_listener" "example" {
  load_balancer_arn = aws_lb.example.arn
  port             = 80
  protocol         = "HTTP"

  default_action {
    type             = "fixed-response"
    fixed_response {
      content_type = "text/plain"
      status_code  = "200"
      content      = "OK"
    }
  }
}
