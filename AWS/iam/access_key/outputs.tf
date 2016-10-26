output "access_key" {
  value = "${aws_iam_access_key.iam_access_key.id}"
}
output "iam_user" {
  value = "${aws_iam_access_key.iam_access_key.user}"
}
output "secret_key" {
  value = "${aws_iam_access_key.iam_access_key.secret}"
}
output "ses_smtp_password" {
  value = "${aws_iam_access_key.iam_access_key.ses_smtp_password}"
}
output "iam_access_key-status" {
  value = "${aws_iam_access_key.iam_access_key.status}"
}