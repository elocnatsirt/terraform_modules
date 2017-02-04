output "arn" {
  value = "${aws_autoscaling_policy.step_policy.arn}"
}
output "name" {
  value = "${aws_autoscaling_policy.step_policy.name}"
}
output "autoscaling_group_name" {
  value = "${aws_autoscaling_policy.step_policy.autoscaling_group_name}"
}
output "adjustment_type" {
  value = "${aws_autoscaling_policy.step_policy.adjustment_type}"
}
output "policy_type" {
  value = "${aws_autoscaling_policy.step_policy.policy_type}"
}