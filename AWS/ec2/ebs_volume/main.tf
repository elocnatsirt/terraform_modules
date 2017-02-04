resource "aws_ebs_volume" "ebs_volume" {
  count                 = "${var.number_of_instances}"
  availability_zone    = "${var.availability_zone}"
  encrypted            = "${var.encrypted}"
  iops                 = "${var.iops}"
  size                 = "${var.size}"
  snapshot_id          = "${var.snapshot_id}"
  type                 = "${var.type}"
  kms_key_id           = "${var.kms_key_id}"
  tags   {
    Name         = "${var.environment}-${var.volume_name}"
    Created_With = "terraform"
  }
}
