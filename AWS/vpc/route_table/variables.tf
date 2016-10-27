variable "vpc_id" {}
variable "propagating_vgws" {
	default = []
}
variable "cidr_block" {}
variable "gateway_id" {
	default = ""
}
variable "nat_gateway_id" {
	default = ""
}
variable "instance_id" {
	default = ""
}
variable "vpc_peering_connection_id" {
	default = ""
}
variable "network_interface_id" {
	default = ""
}