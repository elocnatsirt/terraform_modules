variable "zone_id" {}
variable "name" {}
variable "type" {
	default = "A"
}
variable "ttl" {
	default = "300"
}
variable "records" {
	default = []
}