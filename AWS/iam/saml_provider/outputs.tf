output "arn" {
  value = "${aws_iam_saml_provider.saml_provider.arn}"
}
output "valid_until" {
  value = "${aws_iam_saml_provider.saml_provider.valid_until}"
}