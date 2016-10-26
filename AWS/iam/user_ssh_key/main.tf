resource "aws_iam_user_ssh_key" "user_ssh_key" {
  username   = "${var.iam_user_name}"
  encoding   = "${var.encoding_format}"
  public_key = "${var.public_key}"
  status     = "${var.key_status}"
}