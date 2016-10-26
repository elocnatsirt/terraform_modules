variable "group_list" {
  description = "List of IAM groups to associate with the resource"
  default     = []
}
variable "user_list" {
  description = "List of IAM users to associate with the resource"
  default     = []
}
variable "role_list" {
  description = "List of IAM roles to associate with the resource"
  default     = []
}
variable "policy_arn" {}
variable "policy_name" {}