resource "aws_network_interface" "network_interface" {
  subnet_id       = "${var.subnet_id}"
  private_ips     = ["${element(var.private_ips, count.index)}"]
  security_groups = ["${element(var.security_groups, count.index)}"]
  attachment {
    instance     = "${var.attachment_instance}"
    device_index = "${var.attachment_index}"
  } 
}