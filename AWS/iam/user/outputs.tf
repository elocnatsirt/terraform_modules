output "unique_id" {
  value = "${aws_iam_user.user.unique_id}"
}
output "arn" {
  value = "${aws_iam_user.user.arn}"
}