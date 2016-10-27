resource "aws_subnet" "subnet" {
	vpc_id                  = "${var.vpc_id}"
	cidr_block              = "${var.cidr_block}"
	availability_zone       = "${var.availability_zone}"
	map_public_ip_on_launch = "${var.map_public_ip_on_launch}"
	tags {
		Created_With = "terraform"
	}
}