variable "name" {}
variable "autoscaling_group_name" {}
variable "adjustment_type" {}
variable "metric_aggregation_type" {
  default = ""
}
variable "estimated_instance_warmup" {
  default = ""
}
variable "scaling_adjustment" {}
variable "metric_interval_lower_bound" {
  default = ""
}
variable "metric_interval_upper_bound" {
  default = ""
}