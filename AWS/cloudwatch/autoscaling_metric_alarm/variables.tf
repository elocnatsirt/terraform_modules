variable "alarm_name" {}
variable "comparison_operator" {}
variable "evaluation_periods" {}
variable "metric_name" {}
variable "namespace" {}
variable "period" {}
variable "statistic" {}
variable "threshold" {}
variable "actions_enabled" {
  default = "true"
}
variable "alarm_actions" {
  default = []
}
variable "alarm_description" {
  default = "Created with Terraform"
}
variable "insufficient_data_actions" {
  default = []
}
variable "ok_actions" {
  default = []
}
variable "unit" {
  default = ""
}
variable "asg_name" {}