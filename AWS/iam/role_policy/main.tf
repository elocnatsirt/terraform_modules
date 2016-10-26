resource "aws_iam_role_policy" "role_policy" {
  name   = "${var.role_policy_name}"
  policy = "${var.policy_document}"
  role   = "${var.role_name}"
}