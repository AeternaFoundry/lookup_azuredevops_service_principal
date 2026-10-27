output "service_principal_lookup_id" {
  description = "Map of id values across all service_principal_lookup, keyed the same as var.service_principal_lookup"
  value       = { for k, v in data.azuredevops_service_principal.service_principal_lookup : k => v.id }
}
output "service_principal_lookup_descriptor" {
  description = "Map of descriptor values across all service_principal_lookup, keyed the same as var.service_principal_lookup"
  value       = { for k, v in data.azuredevops_service_principal.service_principal_lookup : k => v.descriptor }
}
output "service_principal_lookup_display_name" {
  description = "Map of display_name values across all service_principal_lookup, keyed the same as var.service_principal_lookup"
  value       = { for k, v in data.azuredevops_service_principal.service_principal_lookup : k => v.display_name }
}
output "service_principal_lookup_origin" {
  description = "Map of origin values across all service_principal_lookup, keyed the same as var.service_principal_lookup"
  value       = { for k, v in data.azuredevops_service_principal.service_principal_lookup : k => v.origin }
}
output "service_principal_lookup_origin_id" {
  description = "Map of origin_id values across all service_principal_lookup, keyed the same as var.service_principal_lookup"
  value       = { for k, v in data.azuredevops_service_principal.service_principal_lookup : k => v.origin_id }
}

