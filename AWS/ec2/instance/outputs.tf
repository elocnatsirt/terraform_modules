output "ec2_instance_id" {
  value = "${aws_instance.ec2_instance.id}"
}
output "private_ip" {
  value = "${aws_instance.ec2_instance.private_ip}"
}