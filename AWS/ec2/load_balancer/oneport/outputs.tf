output "id" {
  value = "${aws_elb.elb.id}"
}
output "name" {
  value = "${aws_elb.elb.name}"
}
output "dns_name" {
  value = "${aws_elb.elb.dns_name}"
}
output "instances" {
  value = "${aws_elb.elb.instances}"
}
output "source_security_group" {
  value = "${aws_elb.elb.source_security_group}"
}
output "source_security_group_id" {
  value = "${aws_elb.elb.source_security_group_id}"
}
output "zone_id" {
  value = "${aws_elb.elb.zone_id}"
}