output "id" {
  value = "${aws_iam_group_policy.group_policy.id}"
}
output "group" {
  value = "${aws_iam_group_policy.group_policy.group}"
}
output "name" {
  value = "${aws_iam_group_policy.group_policy.name}"
}
output "policy" {
  value = "${aws_iam_group_policy.group_policy.policy}"
}