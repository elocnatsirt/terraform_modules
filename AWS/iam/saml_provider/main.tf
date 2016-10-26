resource "aws_iam_saml_provider" "saml_provider" {
  name                   = "${var.provider_name}"
  saml_metadata_document = "${var.saml_metadata_document}"
}