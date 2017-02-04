resource "aws_autoscaling_policy" "step_policy" {
  policy_type                   = "StepScaling"
  name                          = "${var.name}"
  autoscaling_group_name        = "${var.autoscaling_group_name}"
  adjustment_type               = "${var.adjustment_type}"
  metric_aggregation_type       = "${var.metric_aggregation_type}"
  estimated_instance_warmup     = "${var.estimated_instance_warmup}"
  step_adjustment {
    scaling_adjustment          = "${var.scaling_adjustment}"
    metric_interval_lower_bound = "${var.metric_interval_lower_bound}"
    metric_interval_upper_bound = "${var.metric_interval_upper_bound}"
  }
}