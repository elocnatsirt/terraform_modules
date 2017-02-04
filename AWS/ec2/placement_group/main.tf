resource "aws_placement_group" "placement_group" {
  count      = "${var.number_of_pgs}"
  name       = "${var.name}"
  strategy   = "${var.strategy}"
}
