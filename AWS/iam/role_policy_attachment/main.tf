resource "aws_iam_role_policy_attachment" "role_policy_attachment" {
  role       = "${var.role_name}"
  policy_arn = "${var.policy_arn}"
}