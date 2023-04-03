# variable "root_name" {
#   description = "The domain name for the ACM certificate"
#   type        = string
# }

variable "root_domain" {}

variable "route53_zone_id" {
  description = "The Route 53 zone ID for the domain"
  type        = string
}

