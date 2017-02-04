resource "aws_volume_attachment" "attachment" {
  device_name   = "${var.device_name}"
  instance_id   = "${var.instance_id}"
  volume_id     = "${var.volume_id}"
  force_detach  = "${var.force_detach}"
  skip_destroy  = "${var.skip_destroy}"
}
