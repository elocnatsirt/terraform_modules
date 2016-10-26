resource "aws_iam_group_policy_attachment" "managed_group_policy" {
  group      = "${var.iam_group_name}"
  policy_arn = "${var.policy_arn}"
}