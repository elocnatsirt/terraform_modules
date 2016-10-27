resource "aws_route_table" "route_table" {
	vpc_id           = "${var.vpc_id}"
  propagating_vgws = ["${var.propagating_vgws}"]
	route {
		cidr_block                = "${var.cidr_block}"
		gateway_id                = "${var.gateway_id}"
		nat_gateway_id            = "${var.nat_gateway_id}"
		instance_id               = "${var.instance_id}"
		vpc_peering_connection_id = "${var.vpc_peering_connection_id}"
		network_interface_id      = "${var.network_interface_id}"
	}
	tags {
		Created_With = "terraform"
	}
}