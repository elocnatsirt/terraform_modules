output "device_name" {
  value = "${aws_volume_attachment.attachment.device_name}"
}

output "instance_id" {
  value = "${aws_volume_attachment.attachment.instance_id}"
}

output "volume_id" {
  value= "${aws_volume_attachment.attachment.volume_id}"
}
