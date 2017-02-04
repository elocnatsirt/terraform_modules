variable "name" {}
variable "autoscaling_group_name" {}
variable "adjustment_type" {}
variable "cooldown" {
  default = ""
}
variable "scaling_adjustment" {
  default = ""
}