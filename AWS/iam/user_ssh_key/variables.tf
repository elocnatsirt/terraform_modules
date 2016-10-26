variable "encoding_format" {
  description = "Specifies the public key encoding format to use in the response. To retrieve the public key in ssh-rsa format, use SSH . To retrieve the public key in PEM format, use PEM"
  default     = "PEM"
}
variable "public_key" {
  description = "The SSH public key. The public key must be encoded in ssh-rsa format or PEM format"
}
variable "key_status" {
  description = "Active means the key can be used for authentication with an AWS CodeCommit repository. Inactive means the key cannot be used"
  default     = "active"
}
variable "iam_user_name" {}