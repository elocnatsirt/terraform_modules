output "name" {
  value = "${aws_iam_group_membership.group_membership.name}"
}
output "users" {
  value = "${aws_iam_group_membership.group_membership.users}"
}
output "group" {
  value = "${aws_iam_group_membership.group_membership.group}"
}