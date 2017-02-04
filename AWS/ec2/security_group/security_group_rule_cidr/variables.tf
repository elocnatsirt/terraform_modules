variable "type" {
  description = "Ingress or Egress"
}
variable "cidr_blocks" {
  description = "CIDR range to allow for rule. Can't specify with source_security_group_id"
  default     = []
}
variable "from_port" {}
variable "protocol" {}
variable "to_port" {}
variable "security_group_id" {
  description = "The ID of the SG you are applying this rule to"
}