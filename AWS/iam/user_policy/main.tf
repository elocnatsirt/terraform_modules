resource "aws_iam_user_policy" "user_policy" {
  policy = "${var.policy_document}"
  name   = "${var.policy_name}"
  user   = "${var.iam_user_name}"
}