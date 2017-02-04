resource "aws_elb" "elb" {
  name                        = "${var.name}"
  security_groups             = ["${var.security_groups}"]
  subnets                     = ["${var.subnet_ids}"]
  # instances                   = ["${var.instances}"]
  internal                    = "${var.internal}"
  cross_zone_load_balancing   = "${var.cross_zone}"
  idle_timeout                = "${var.idle_timeout}"
  connection_draining         = "${var.connection_draining}"
  connection_draining_timeout = "${var.connection_draining_timeout}"

  listener {
    instance_port     = "${var.instance_port1}"
    instance_protocol = "${var.instance_protocol1}"
    lb_port           = "${var.lb_port1}"
    lb_protocol       = "${var.lb_protocol1}"
  }

  listener {
    instance_port     = "${var.instance_port2}"
    instance_protocol = "${var.instance_protocol1}"
    lb_port           = "${var.lb_port2}"
    lb_protocol       = "${var.lb_protocol2}"
  }

  health_check {
    healthy_threshold   = "${var.hc_healthy_threshold}"
    unhealthy_threshold = "${var.hc_unhealthy_threshold}"
    target              = "${var.hc_target}"
    interval            = "${var.hc_interval}"
    timeout             = "${var.hc_timeout}"
  }

  access_logs {
    bucket        = "${var.elb_log_bucket}"
    bucket_prefix = "${var.environment}/${var.product_name}"
    interval      = "${var.elb_log_interval}"
  }

  tags {
    Name         = "${var.environment}-${var.product_name}"
    Product      = "${var.product_name}"
    Environment  = "${var.environment}"
    Created_With = "terraform"
  }
}
