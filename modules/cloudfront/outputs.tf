output "cloudfront_distribution_id" {
  value = aws_cloudfront_distribution.s3_distribution.id
}

output "cloudfront_distribution_domain" {
  value = aws_cloudfront_distribution.s3_distribution.domain_name
}

output "cloudfront_distribution" {
  value = aws_cloudfront_distribution.s3_distribution
}