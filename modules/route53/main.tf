resource "aws_route53_zone" "main" {
  name = var.hosted_zone
}

resource "aws_route53_record" "record" {
  for_each = var.records_a
  type    = "A"
  name    = each.key
  ttl     = 300
  zone_id = aws_route53_zone.main.id
  records = [each.value]
}

