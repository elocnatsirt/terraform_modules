variable "name" {}
variable "elb_log_bucket" {}
variable "product_name" {}
variable "environment" {}
variable "instance_port" {}
variable "instance_protocol" {
	default = "HTTP"
}
variable "lb_port" {}
variable "lb_protocol" {
	default = "HTTP"
}
variable "elb_log_interval" {
  default = 60
}
variable "security_groups" {
  default = []
}
variable "subnet_ids" {
  default = []
}
# variable "instances" {
#   default = []
# }
variable "internal" {
  default = "false"
}
variable "cross_zone" {
  default = "true"
}
variable "idle_timeout" {
  default = 60
}
variable "connection_draining" {
  default = "false"
}
variable "connection_draining_timeout" {
  default = "300"
}
variable "ssl_certificate_arn" {
  default = ""
}
variable "hc_healthy_threshold" {}
variable "hc_unhealthy_threshold" {}
variable "hc_target" {
  description = "Valid pattern is '${PROTOCOL}:${PORT}${PATH}', where PROTOCOL values are: 'HTTP, HTTPS - PORT and PATH are required' - 'TCP, SSL - PORT is required, PATH is not supported'"
}
variable "hc_timeout" {}
variable "hc_interval" {}
