data "template_file" "userdata" {
  count    = "${var.number_of_instances}"
  template = "${var.userdata_file}"

  vars {
    pre_custom  = "${var.pre_userdata_custom}"
    post_custom = "${var.post_userdata_custom}"
    server      = "${var.instance_name}${format("%03d", count.index + 1 + var.myoffset)}${replace(var.environment, "/\\b^\\b|(\\w+)/", "$n")}"
    environment = "${var.environment}"
    logfile     = "${var.bootstrap_logfile}"
  }
}

resource "aws_instance" "ec2_instance" {
  count                       = "${var.number_of_instances}"
  ami                         = "${var.ami_id}"
  availability_zone           = "${element(split(",", var.availability_zones), count.index)}"
  subnet_id                   = "${element(split(",", var.subnet_ids), count.index)}"
  placement_group             = "${var.placement_group}"
  ebs_optimized               = "${var.ebs_optimized}"
  disable_api_termination     = "${var.termination_protection}"
  instance_type               = "${var.instance_type}"
  key_name                    = "${var.key_pair}"
  monitoring                  = "${var.detailed_monitoring}"
  vpc_security_group_ids      = ["${var.security_groups}"]
  associate_public_ip_address = "${var.give_public_ip}"
  source_dest_check           = "${var.source_dest_check}"
  user_data                   = "${element(data.template_file.userdata.*.rendered, count.index)}"
  iam_instance_profile        = "${var.iam_instance_profile}"
  #ephemeral_block_device      = "${var.ephemeral_block_device}"
  #ebs_block_device            = "${var.ebs_block_device}"
  root_block_device {
    volume_type           = "${var.root_block_device_type}"
    delete_on_termination = "${var.root_block_device_delete_on_term}"
    volume_size           = "${var.root_block_device_size}"
  }
  
  tags {
    Name         = "${var.instance_name}${format("%03d", count.index + 1 + var.myoffset)}${replace(var.environment, "/\\b^\\b|(\\w+)/", "$n")}"
    Product      = "${var.product_name}"
    Environment  = "${var.environment}"
    Created_With = "terraform"
  }
}

resource "aws_route53_record" "simple_record" {
  count   = "${var.number_of_instances}"
  name    = "${var.instance_name}${format("%03d", count.index + 1 + var.myoffset)}${replace(var.environment, "/\\b^\\b|(\\w+)/", "$n")}.${var.environment}.${var.domain_suffix}"
  zone_id = "${var.r53_zone_id}"
  ttl     = "${var.r53_ttl}"
  type    = "${var.r53_type}"
  records = ["${element(aws_instance.ec2_instance.*.private_ip, count.index)}"]
}
