output "arn" {
  value = "${aws_autoscaling_policy.simple_policy.arn}"
}
output "name" {
  value = "${aws_autoscaling_policy.simple_policy.name}"
}
output "autoscaling_group_name" {
  value = "${aws_autoscaling_policy.simple_policy.autoscaling_group_name}"
}
output "adjustment_type" {
  value = "${aws_autoscaling_policy.simple_policy.adjustment_type}"
}
output "policy_type" {
  value = "${aws_autoscaling_policy.simple_policy.policy_type}"
}