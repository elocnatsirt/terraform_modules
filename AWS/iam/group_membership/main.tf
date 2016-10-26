resource "aws_iam_group_membership" "group_membership" {
  name  = "${var.name}"
  users = "${var.user_list}"
  group = "${var.group_name}"
}