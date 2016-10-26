output "arn" {
  value = "${aws_iam_role.role.arn}"
}
output "unique_id" {
  value = "${aws_iam_role.role.unique_id}"
}