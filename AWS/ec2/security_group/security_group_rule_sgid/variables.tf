variable "type" {
  description = "Ingress or Egress"
}
variable "from_port" {}
variable "protocol" {}
variable "to_port" {}
variable "security_group_id" {
  description = "The ID of the SG you are applying this rule to"
}
variable "source_security_group_id" {
  description = "ID of the SG you are allowing access to this rule. Can't specify with cidr_blocks"
  default     = ""
}
