output "id" {
  value = "${aws_subnet.subnet.id}"
}
output "availability_zone" {
  value = "${aws_subnet.subnet.availability_zone}"
}
output "cidr_block" {
  value = "${aws_subnet.subnet.cidr_block}"
}
output "vpc_id" {
  value = "${aws_subnet.subnet.vpc_id}"
}