output "rum_retention_filters_lookup_id" {
  description = "Map of id values across all rum_retention_filters_lookup, keyed the same as var.rum_retention_filters_lookup except keys with no id are omitted"
  value       = { for k, v in data.datadog_rum_retention_filters.rum_retention_filters_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "rum_retention_filters_lookup_application_id" {
  description = "Map of application_id values across all rum_retention_filters_lookup, keyed the same as var.rum_retention_filters_lookup except keys with no application_id are omitted"
  value       = { for k, v in data.datadog_rum_retention_filters.rum_retention_filters_lookup : k => v.application_id if v.application_id != null && length(v.application_id) > 0 }
}
output "rum_retention_filters_lookup_retention_filters" {
  description = "Map of retention_filters values across all rum_retention_filters_lookup, keyed the same as var.rum_retention_filters_lookup except keys with no retention_filters are omitted"
  value       = { for k, v in data.datadog_rum_retention_filters.rum_retention_filters_lookup : k => v.retention_filters if v.retention_filters != null && length(v.retention_filters) > 0 }
}

