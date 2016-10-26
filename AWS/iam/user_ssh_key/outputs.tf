output "ssh_public_key_id" {
  value = "${aws_iam_user_ssh_key.user_ssh_key.ssh_public_key_id}"
}
output "fingerprint" {
  value = "${aws_iam_user_ssh_key.user_ssh_key.fingerprint}"
}