variable "s3_regional_domain_name" {
  description = "The domain of the origin server."
  type        = string
}

variable "origin_id" {
  description = "Origin_id"
  type        = string
}

variable "acm_certificate_arn" {
  description = "The ACM certificate ARN for CloudFront"
  type        = string
}

variable "cert_validation_id" {
  description = "The ACM certificate validation ID for CloudFront"
  type        = string
}