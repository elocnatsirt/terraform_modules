variable "name" {}
variable "availability_zones" {
  default = []
}
variable "max_size" {}
variable "min_size" {}
variable "launch_config" {}
variable "hc_grace_period" {
  default = "300"
}
variable "hc_type" {
  default = "EC2"
}
variable "desired" {}
variable "load_balancers" {
  default = []
}
variable "subnet_ids" {
  default = []
}
variable "target_group_arns" {
  default = []
}
variable "term_policies" {
  default = ["default"]
}
variable "placement_group" {
  default = ""
}
variable "metrics_granularity" {
  default = "1Minute"
}
variable "enabled_metrics" {
  default = []
}
variable "wait_for_capacity_timeout" {
  default = "10m"
}
variable "min_elb_capacity" {
  default = ""
}
variable "wait_for_elb_capacity" {
  default = ""
}
variable "protect_from_scale_in" {
  default = "false"
}
variable "product_name" {}
variable "environment" {}