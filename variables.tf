variable "rum_retention_filters_lookup" {
  description = <<EOT
Map of rum_retention_filters_lookup, attributes below
Required:
    - application_id
EOT

  type = map(object({
    application_id = string
  }))
}

