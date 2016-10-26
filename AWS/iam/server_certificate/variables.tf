variable "certificate_body" {
  description = "Contents of public key certificate in PEM-encoded format"
}
variable "certificate_chain" {
  description = "Contents of certificate chain in PEM-encoded format"
}
variable "private_key" {
  description = "Contents of the private key in PEM-encoded format"
}
variable "certificate_name" {}
variable "iam_path" {
  default     = "/"
  description = "Path of where you want to create the IAM resource"
}