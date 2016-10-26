output "group_id" {
  value = "${aws_iam_group.iam_group.id}"
}
output "group_arn" {
  value = "${aws_iam_group.iam_group.arn}"
}
output "group_name" {
  value = "${aws_iam_group.iam_group.name}"
}
output "group_path" {
  value = "${aws_iam_group.iam_group.path}"
}
output "unique_id" {
  value = "${aws_iam_group.iam_group.unique_id}"
}