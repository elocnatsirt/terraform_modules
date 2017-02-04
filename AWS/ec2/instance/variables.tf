variable "number_of_instances" {
  description = "Number of instances to create"
  default     = "1"
}
variable "ami_id" {}
variable "placement_group" {
  default = ""
}
variable "ebs_optimized" {
  default = "false"
}
variable "termination_protection" {
  default = "false"
}
variable "instance_type" {}
variable "key_pair" {
  description = "Sets the name of the key pair you want to use for the instance"
}
variable "detailed_monitoring" {
  description = "Enables detailed Cloudwatch monitoring"
  default     = "false"
}
variable "security_groups" {
  description = "List of VPC security groups the instance will belong to"
}
variable "give_public_ip" {
  description = "Assosciates a public IP with the instance"
  default     = "false"
}
variable "source_dest_check" {
  default = "true"
}
variable "user_data" {
  description = "The path to a file with user_data for the instances"
  default     = ""
}
variable "iam_instance_profile" {}
variable "root_block_device_type" {
  default = "gp2"
}
variable "root_block_device_delete_on_term" {
  default = "true"
}
variable "root_block_device_size" {
  default = "100"
}
variable "ebs_block_device" {
  default = ""
}
variable "ephemeral_block_device" {
  default = ""
}
variable "instance_name" {
  description = "Used to populate the Name tag. This is done in main.tf"
}
variable "bootstrap_logfile" {
  default = "/root/bootstrap.log"
}
variable "userdata_file" {}
variable "r53_type" {
  default = "A"
}
variable "r53_ttl" {
  default = "300"
}
variable "r53_zone_id" {}
variable "pre_userdata_custom" {
  default = ""
}
variable "post_userdata_custom" {
  default = ""
}
# NOTE: If you are calling multiple subnet_ids/avail_zones in the variable 
# They must be comma separated and match with each other. IE
# az ='$1,$2'
# sid='$1,$2'
variable "subnet_ids" {}
variable "availability_zones" {}
variable "myoffset" {
  description = "If you want your server count to start at something other than 001, use this variable"
  default     = 0
}
variable "domain_suffix" {}
variable "product_name" {
  description = "Just a simple name to apply to tags to identify what the instances are running"
}