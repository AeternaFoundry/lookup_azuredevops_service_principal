output "service_principal_lookup_id" {
  description = "Map of id values across all service_principal_lookup, keyed the same as var.service_principal_lookup except keys with no id are omitted"
  value       = { for k, v in data.azuredevops_service_principal.service_principal_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_principal_lookup_descriptor" {
  description = "Map of descriptor values across all service_principal_lookup, keyed the same as var.service_principal_lookup except keys with no descriptor are omitted"
  value       = { for k, v in data.azuredevops_service_principal.service_principal_lookup : k => v.descriptor if v.descriptor != null && length(v.descriptor) > 0 }
}
output "service_principal_lookup_display_name" {
  description = "Map of display_name values across all service_principal_lookup, keyed the same as var.service_principal_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.azuredevops_service_principal.service_principal_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "service_principal_lookup_origin" {
  description = "Map of origin values across all service_principal_lookup, keyed the same as var.service_principal_lookup except keys with no origin are omitted"
  value       = { for k, v in data.azuredevops_service_principal.service_principal_lookup : k => v.origin if v.origin != null && length(v.origin) > 0 }
}
output "service_principal_lookup_origin_id" {
  description = "Map of origin_id values across all service_principal_lookup, keyed the same as var.service_principal_lookup except keys with no origin_id are omitted"
  value       = { for k, v in data.azuredevops_service_principal.service_principal_lookup : k => v.origin_id if v.origin_id != null && length(v.origin_id) > 0 }
}

