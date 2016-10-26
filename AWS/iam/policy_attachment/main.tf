resource "aws_iam_policy_attachment" "policy_attachment" {
  name       = "${var.policy_name}"
  users      = "${var.user_list}"
  roles      = "${var.role_list}"
  groups     = "${var.group_list}"
  policy_arn = "${var.policy_arn}"
}