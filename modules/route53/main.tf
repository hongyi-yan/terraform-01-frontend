data "aws_route53_zone" "existing" {
  name = var.existing_hosted_zone_domain
}

resource "aws_route53_record" "s3_alias" {
  zone_id = data.aws_route53_zone.existing.zone_id
  name    = var.record_name
  type    = "A"

  alias {
    name = var.cloudfront_domain_name
    zone_id = var.cloudfront_hosted_zone_id
    evaluate_target_health = false
  }
}

# LGTM