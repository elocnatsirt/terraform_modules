variable "route_table_id" {}
variable "destination_cidr_block" {}
variable "vpc_peering_connection_id" {
  default = ""
}
variable "gateway_id" {
  default = ""
}
variable "nat_gateway_id" {
  default = ""
}
variable "instance_id" {
  default = ""
}
variable "network_interface_id" {
  default = ""
}