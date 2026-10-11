variable "access_package_catalogs" {
  description = <<EOT
Map of access_package_catalogs, attributes below
Required:
    - description
    - display_name
Optional:
    - externally_visible
    - published
EOT

  type = map(object({
    description        = string
    display_name       = string
    externally_visible = optional(bool)
    published          = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.access_package_catalogs : (
        length(v.display_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.access_package_catalogs : (
        length(v.description) > 0
      )
    ])
    error_message = "must not be empty"
  }
}

