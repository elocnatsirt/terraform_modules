variable "policy_description" {
  description = "Description of the IAM policy"
  default     = "IAM policy managed by Terraform"
}
variable "iam_path" {
  default     = "/"
  description = "Path of where you want to create the IAM resource"
}
variable "policy_document" {
  description = "The policy document in JSON format. STRONGLY RECOMMENDED to use the file function"
}
variable "policy_name" {}