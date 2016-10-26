resource "aws_iam_policy" "policy" {
  description = "${var.policy_description}"
  path        = "${var.iam_path}"
  policy      = "${var.policy_document}"
  name        = "${var.policy_name}"
}