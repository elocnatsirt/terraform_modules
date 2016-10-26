resource "aws_iam_server_certificate" "server_certificate" {
  name              = "${var.certificate_name}"
  certificate_body  = "${var.certificate_body}"
  certificate_chain = "${var.certificate_chain}"
  private_key       = "${var.private_key}"
  path              = "${var.iam_path}"
}