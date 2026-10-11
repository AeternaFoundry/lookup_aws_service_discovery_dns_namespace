data "aws_service_discovery_dns_namespace" "service_discovery_dns_namespace_lookup" {
  for_each = var.service_discovery_dns_namespace_lookup

  name   = each.value.name
  type   = each.value.type
  region = each.value.region
  tags   = each.value.tags
}

