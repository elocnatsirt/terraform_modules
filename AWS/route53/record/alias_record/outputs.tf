output "fqdn" {
  value = "${aws_route53_record.alias.fqdn}"
}