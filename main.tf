provider "aws" {
  region = "us-east-1"
}

# two variables
module "pn-app-s3" {
  source      = "./modules/s3"
  domain_name = var.domain_name
  env_prefix  = var.env_prefix
  acl = var.acl
}

module "pn-cloudfront" {
  source          = "./modules/cloudfront"
  s3_regional_domain_name = module.pn-app-s3.bucket_regional_domain_name
  origin_id = module.pn-app-s3.bucket_regional_domain_name
  acm_certificate_arn = module.acm.cert_fromacm.arn
  cert_validation_id  = module.acm.cert_fromacm.id
}

# define s3_domian_name & s3_hosted_zone_name {
module "route53" {
  source          = "./modules/route53"
  existing_hosted_zone_domain = var.existing_hosted_zone_domain
  record_name = var.record_name
  cloudfront_domain_name = module.pn-cloudfront.cloudfront_distribution.domain_name
  cloudfront_hosted_zone_id = "Z2FDTNDATAQYW2"
}

module "acm" {
  source         = "./modules/acm"
  root_domain = var.root_domain
  route53_zone_id = module.route53.zone_ryan
}

# output "pn-s3-01" {
#   value = module.pn-app-s3.pn-s3
# }