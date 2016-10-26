resource "aws_iam_access_key" "iam_access_key" {
  user = "${var.iam_user_name}"
}