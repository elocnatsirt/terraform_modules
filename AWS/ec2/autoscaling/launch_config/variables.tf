variable "name_prefix" {}
variable "ami_id" {}
variable "instance_type" {}
variable "iam_instance_profile" {
  default = "readonly"
}
variable "key_name" {}
variable "security_groups" {
  default = []
}
variable "associate_public_ip" {
  default = "false"
}
variable "user_data" {
  description = "The path to a file with user_data for the instances"
  default     = ""
}
variable "enable_monitoring" {
  default = "true"
}
variable "ebs_optimized" {
  default = "false"
}
variable "placement_tenancy" {
  default = "default"
}
variable "root_block_device_type" {
  default = "gp2"
}
variable "root_block_device_delete_on_term" {
  default = "true"
}
variable "root_block_device_size" {
  default = "100"
}
# Userdata Variables
variable "userdata_custom" {
  default = ""
}
variable "environment" {}
variable "bootstrap_logfile" {
  default = "/root/bootstrap.log"
}
variable "server_name_prefix" {
	description = "This is the naming convention we append to the beginning servers, IE 'Jenkins_Slave'"
}