# Note: If you need to pass self to this module, instead pass the SGID of
# the module itself. IE source_security_group_id = "${module.my_module.id}"
resource "aws_security_group_rule" "ec2_sg_rule_sgid" {
  type                     = "${var.type}"
  from_port                = "${var.from_port}"
  to_port                  = "${var.to_port}"
  protocol                 = "${var.protocol}"
  source_security_group_id = "${var.source_security_group_id}"
  security_group_id        = "${var.security_group_id}"
}