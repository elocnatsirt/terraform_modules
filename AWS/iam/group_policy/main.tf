resource "aws_iam_group_policy" "group_policy" {
  policy = "${var.policy_document}"
  name   = "${var.policy_name}"
  group  = "${var.iam_group_id}"
}