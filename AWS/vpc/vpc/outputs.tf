output "id" {
  value = "${aws_vpc.vpc.id}"
}
output "cidr_block" {
  value = "${aws_vpc.vpc.cidr_block}"
}
output "instance_tenancy" {
  value = "${aws_vpc.vpc.instance_tenancy}"
}
output "enable_dns_support" {
  value = "${aws_vpc.vpc.enable_dns_support}"
}
output "enable_dns_hostnames" {
  value = "${aws_vpc.vpc.enable_dns_hostnames}"
}
output "enable_classiclink" {
  value = "${aws_vpc.vpc.enable_classiclink}"
}
output "main_route_table_id" {
  value = "${aws_vpc.vpc.main_route_table_id}"
}
output "default_network_acl_id" {
  value = "${aws_vpc.vpc.default_network_acl_id}"
}
output "default_security_group_id" {
  value = "${aws_vpc.vpc.default_security_group_id}"
}
output "default_route_table_id" {
  value = "${aws_vpc.vpc.default_route_table_id}"
}