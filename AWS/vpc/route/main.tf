resource "aws_route" "route" {
  route_table_id            = "${var.route_table_id}"
  destination_cidr_block    = "${var.destination_cidr_block}"
  vpc_peering_connection_id = "${var.vpc_peering_connection_id}"
  gateway_id                = "${var.gateway_id}"
  nat_gateway_id            = "${var.nat_gateway_id}"
  instance_id               = "${var.instance_id}"
  network_interface_id      = "${var.network_interface_id}"
}