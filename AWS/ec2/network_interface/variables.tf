variable "subnet_id" {
  description = "Subnet ID to create the ENI in"
}

variable "private_ips" {
  description = "List of private IPs to assign to the ENI."
  default     = []
}

variable "security_groups" { 
  description = "List of security group IDs to assign to the ENI"
  default     = []
}

variable "attachment_instance" {
  description = "ID of the instance to attach to"
}  

variable "attachment_index" { 
  description = "Integer to define the devices index"
  default     = 1
}