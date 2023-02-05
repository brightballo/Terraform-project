variable "domain_name" {
  default     = "odeybright.me"
  type        = string
  description = "My Domain Name"
}

# get hosted zone details
resource "aws_route53_zone" "My_host_zone" {
  name = var.domain_name
  tags = {
    Environment = "production"
  }
}

# terraform aws route 53 record
resource "aws_route53_record" "my_site_domain" {
  zone_id = aws_route53_zone.My_host_zone.zone_id
  name    = "terraform-test.${var.domain_name}"
  type    = "A"
  alias {
    name                   = aws_lb.Alt_lb.dns_name
    zone_id                = aws_lb.Alt_lb.zone_id
    evaluate_target_health = true
  }
}