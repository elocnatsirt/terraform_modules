resource "aws_iam_user" "user" {
  name          = "${var.user_name}"
  path          = "${var.iam_path}"
  force_destroy = "${var.force_destroy}"
}