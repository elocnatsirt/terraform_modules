variable "zone_id" {}
variable "record_name" {}
variable "type" {
	default = "A"
}
variable "alias_name" {}
variable "alias_zone_id" {}
variable "eval_target_health" {
	default = false
}