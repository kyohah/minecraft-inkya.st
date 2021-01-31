data "aws_route53_zone" "main" {
  name = "inky.as."
}

resource "aws_route53_record" "main" {
  zone_id = data.aws_route53_zone.main.zone_id
  name = "inky.as"
  type    = "A"
  ttl     = 1 # not support 0
  records = [var.conoha_ip]
}
