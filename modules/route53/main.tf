resource "aws_route53_zone" "main" {
  name = var.hosted_zone
}

resource "aws_route53_record" "record" {
  count = length(var.records)
  type    = var.records[count.index].type
  name    = var.records[count.index].name
  ttl     = var.records[count.index].ttl
  zone_id = aws_route53_zone.main.id
  records = var.records[count.index].records
}

