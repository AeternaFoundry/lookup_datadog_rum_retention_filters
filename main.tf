data "datadog_rum_retention_filters" "rum_retention_filters_lookup" {
  for_each = var.rum_retention_filters_lookup

  application_id = each.value.application_id
}

