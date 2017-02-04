data "template_file" "userdata" {
  template = "${var.user_data}"

  vars {
    server_name = "${var.server_name_prefix}"
    environment = "${var.environment}"
    logfile     = "${var.bootstrap_logfile}"
    custom      = "${var.userdata_custom}"
  }
}

resource "aws_launch_configuration" "lc" {
  name_prefix                 = "${var.name_prefix}"
  image_id                    = "${var.ami_id}"
  instance_type               = "${var.instance_type}"
  iam_instance_profile        = "${var.iam_instance_profile}"
  key_name                    = "${var.key_name}"
  security_groups             = ["${var.security_groups}"]
  associate_public_ip_address = "${var.associate_public_ip}"
  user_data                   = "${data.template_file.userdata.rendered}"
  enable_monitoring           = "${var.enable_monitoring}"
  ebs_optimized               = "${var.ebs_optimized}"
  #ephemeral_block_device      = "${var.ephemeral_block_device}"
  #ebs_block_device            = "${var.ebs_block_device}"
  root_block_device {
    volume_type           = "${var.root_block_device_type}"
    delete_on_termination = "${var.root_block_device_delete_on_term}"
    volume_size           = "${var.root_block_device_size}"
  }
  placement_tenancy           = "${var.placement_tenancy}"
  lifecycle {
    create_before_destroy = true
  }
}