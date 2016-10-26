variable "allow_users_to_change_password" {
  default = "true"
}
variable "hard_expiry" {
  description = "Whether users are prevented from setting a new password after their password has expired (i.e. require administrator reset)"
  default     = "false"
}
variable "max_password_age" {
  default = "90"
}
variable "minimum_password_length" {
  default = "8"
}
variable "password_reuse_prevention" {
  description = "The number of previous passwords that users are prevented from reusing."
  default     = "5"
}
variable "require_lowercase_characters" {
  default = "true"
}
variable "require_numbers" {
  default = "true"
}
variable "require_symbols" {
  default = "true"
}
variable "require_uppercase_characters" {
  default = "true"
}