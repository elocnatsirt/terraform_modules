resource "aws_route53_record" "simple" {
	zone_id = "${var.zone_id}"
	name    = "${var.name}"
	type    = "${var.type}"
	ttl     = "${var.ttl}"
	records = ["${var.records}"]
}