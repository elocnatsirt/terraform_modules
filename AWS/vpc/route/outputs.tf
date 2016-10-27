output "route_table_id" {
  value = "${aws_route.route.route_table_id}"
}
output "destination_cidr_block" {
  value = "${aws_route.route.destination_cidr_block}"
}
output "vpc_peering_connection_id" {
  value = "${aws_route.route.vpc_peering_connection_id}"
}
output "gateway_id" {
  value = "${aws_route.route.gateway_id}"
}
output "nat_gateway_id" {
  value = "${aws_route.route.nat_gateway_id}"
}
output "instance_id" {
  value = "${aws_route.route.instance_id}"
}
output "network_interface_id" {
  value = "${aws_route.route.network_interface_id}"
}