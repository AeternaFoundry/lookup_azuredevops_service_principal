data "azuredevops_service_principal" "service_principal_lookup" {
  for_each = var.service_principal_lookup

  display_name = each.value.display_name
  origin_id    = each.value.origin_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

