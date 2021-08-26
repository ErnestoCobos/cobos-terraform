resource "aws_route53_zone" "primary" {
  name = "cobos.io"
}

module "cobos_dns" {
  source = "../../modules/route53"
  hosted_zone = var.hosted_zone
  records = jsondecode(var.records)
}
