variable "service_principal_lookup" {
  description = <<EOT
Map of service_principal_lookup, attributes below
Optional:
    - display_name
    - origin_id
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    display_name = optional(string)
    origin_id    = optional(string)
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.service_principal_lookup : (
        v.display_name == null || (length(trimspace(v.display_name)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
}

