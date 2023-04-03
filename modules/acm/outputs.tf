# output "certificate_arn" {
#   description = "The ARN of the certificate"
#   value       = aws_acm_certificate.this.arn
# }

# output "cert_validation_id" {
#   description = "The ID of the certificate validation"
#   value       = aws_acm_certificate_validation.this.id
# }

output "cert_fromacm" {
  value = aws_acm_certificate_validation.this
}