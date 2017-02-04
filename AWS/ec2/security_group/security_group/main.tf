resource "aws_security_group" "ec2_sg" {
  name        = "${var.sg_name}"
  description = "${var.sg_description}"
  vpc_id      = "${var.vpc_id}"
  tags {
    Name         = "${var.sg_name}"
    Product      = "${var.product_name}"
    Environment  = "${var.environment}"
    Created_With = "terraform"
  }
}