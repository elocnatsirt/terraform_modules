resource "aws_autoscaling_group" "asg" {
  name                      = "${var.name}"
  availability_zones        = ["${var.availability_zones}"]
  max_size                  = "${var.max_size}"
  min_size                  = "${var.min_size}"
  launch_configuration      = "${var.launch_config}"
  health_check_grace_period = "${var.hc_grace_period}"
  health_check_type         = "${var.hc_type}"
  desired_capacity          = "${var.desired}"
  load_balancers            = ["${var.load_balancers}"]
  vpc_zone_identifier       = ["${var.subnet_ids}"]
  target_group_arns         = ["${var.target_group_arns}"]
  termination_policies      = ["${var.term_policies}"]
  placement_group           = "${var.placement_group}"
  metrics_granularity       = "${var.metrics_granularity}"
  enabled_metrics           = ["${var.enabled_metrics}"]
  wait_for_capacity_timeout = "${var.wait_for_capacity_timeout}"
  min_elb_capacity          = "${var.min_elb_capacity}"
  wait_for_elb_capacity     = "${var.wait_for_elb_capacity}"
  protect_from_scale_in     = "${var.protect_from_scale_in}"
  tag {
    key                 = "Name"
    value               = "${var.environment}-${var.product_name}-autoscale"
    propagate_at_launch = true
  }
  tag {
    key                 = "Environment"
    value               = "${var.environment}"
    propagate_at_launch = true
  }
  tag {
    key                 = "Product"
    value               = "${var.product_name}"
    propagate_at_launch = true
  }
}