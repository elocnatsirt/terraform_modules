variable "cidr_block" {
  default = "10.0.0.0/16"
}
variable "instance_tenancy" {
  default = "default"
}
variable "enable_dns_support" {
  default = "true"
}
variable "enable_dns_hostnames" {
  default = "false"
}
variable "enable_classiclink" {
  default = "false"
}