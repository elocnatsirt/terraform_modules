variable "iam_path" {
  default     = "/"
  description = "Path of where you want to create the IAM resource"
}
variable "role_list" {
  description = "List of IAM roles to associate with the resource"
  default     = []
}
variable "profile_name" {}