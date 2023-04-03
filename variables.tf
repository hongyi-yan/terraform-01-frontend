variable "env_prefix" {
  type        = string
  description = "The environment prefix to use for naming resources."
  default = "03"
}

variable "acl" {
  type        = string
  description = "The ACL to apply to the S3 bucket."
  default     = "private"
}

variable "domain_name" {
  type        = string
  description = "The domain name to use for the S3 bucket."
  default = "vickynryan.click"
}

variable "existing_hosted_zone_domain" {
  description = "hosted_zone_name"
  type        = string
  default = "vickynryan.click"
}

variable "record_name" {
    description = "record_name"
    type        = string
    default = "03test.vickynryan.click"
}

variable "root_domain" {
  description = "The domain name for the ACM certificate"
  type        = string
  default = "vickynryan.click"
}


variable "s3_bucket_zone_id" {
  description = "S3 存储桶域名的区域 ID"
  type        = string
  default = "Z3AQBSTGFYJSTF"
}



variable "route53_zone_id" {
  description = "The Route 53 zone ID for the domain"
  type        = string
  default = "Z02001822L874ITW3UH6H"
}

variable "s3_bucket_domain" {
  description = "The S3 bucket domain name"
  type        = string
  default     = "uattest.vickynryan.click.s3-website-us-east-1.amazonaws.com"
}