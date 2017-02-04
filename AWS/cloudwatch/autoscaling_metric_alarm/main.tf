resource "aws_cloudwatch_metric_alarm" "autoscaling_alarm" {
  alarm_name                = "${var.alarm_name}"
  comparison_operator       = "${var.comparison_operator}"
  evaluation_periods        = "${var.evaluation_periods}"
  metric_name               = "${var.metric_name}"
  namespace                 = "${var.namespace}"
  period                    = "${var.period}"
  statistic                 = "${var.statistic}"
  threshold                 = "${var.threshold}"
  actions_enabled           = "${var.actions_enabled}"
  alarm_description         = "${var.alarm_description}"
  dimensions {
    AutoScalingGroupName    = "${var.asg_name}"
  }
  insufficient_data_actions = ["${var.insufficient_data_actions}"]
  alarm_actions             = ["${var.alarm_actions}"]
  ok_actions                = ["${var.ok_actions}"]
  unit                      = "${var.unit}"
}