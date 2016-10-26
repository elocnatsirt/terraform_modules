variable "group_membership_name" {}
variable "user_list" {
  description = "List of IAM users to associate with the resource"
  default     = []
}
variable "group_name" {}