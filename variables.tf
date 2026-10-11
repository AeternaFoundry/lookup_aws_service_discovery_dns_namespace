variable "service_discovery_dns_namespace_lookup" {
  description = <<EOT
Map of service_discovery_dns_namespace_lookup, attributes below
Required:
    - name
    - type
Optional:
    - region
    - tags
EOT

  type = map(object({
    name   = string
    type   = string
    region = optional(string)
    tags   = optional(map(string))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

