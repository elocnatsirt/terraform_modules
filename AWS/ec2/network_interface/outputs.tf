output "eni_subnet_id" {
  value = "${aws_network_interface.network_interface.subnet_id}"
}

output "eni_description" {
  value = "${aws_network_interface.network_interface.description}"
}

output "eni_private_ips" {
  value = "${aws_network_interface.network_interface.private_ips}"
}

output "eni_security_groups" {
  value = "${aws_network_interface.network_interface.security_groups}"
}

output "eni_attachment_id" {
  value = "${aws_network_interface.network_interface.attachment.attachment_id}"
}

output "eni_source_dest_check" {
  value = "${aws_network_interface.network_interface.source_dest_check}"
}

output "eni_tags" {
  value = "${aws_network_interface.network_interface.tags}"
}

