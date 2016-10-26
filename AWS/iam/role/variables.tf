variable "role_name" {}
variable "assume_role_policy" {
  description = "The policy that grants an entity permission to assume the role"
  default     = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}
variable "iam_path" {
  default     = "/"
  description = "Path of where you want to create the IAM resource"
}