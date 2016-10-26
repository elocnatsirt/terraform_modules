resource "aws_iam_instance_profile" "instance_profile" {
  name  = "${var.profile_name}"
  path  = "${var.iam_path}"
  roles = "${var.role_list}"
}