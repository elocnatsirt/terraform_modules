resource "aws_autoscaling_policy" "simple_policy" {
  policy_type            = "SimpleScaling"
  name                   = "${var.name}"
  autoscaling_group_name = "${var.autoscaling_group_name}"
  adjustment_type        = "${var.adjustment_type}"
  cooldown               = "${var.cooldown}"
  scaling_adjustment     = "${var.scaling_adjustment}"
}