output "expire_passwords" {
  value = "${aws_iam_account_password_policy.password_policy.expire_passwords}"
}