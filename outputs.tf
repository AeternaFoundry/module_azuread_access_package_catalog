output "access_package_catalogs_id" {
  description = "Map of id values across all access_package_catalogs, keyed the same as var.access_package_catalogs"
  value       = { for k, v in azuread_access_package_catalog.access_package_catalogs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "access_package_catalogs_description" {
  description = "Map of description values across all access_package_catalogs, keyed the same as var.access_package_catalogs"
  value       = { for k, v in azuread_access_package_catalog.access_package_catalogs : k => v.description if v.description != null && length(v.description) > 0 }
}
output "access_package_catalogs_display_name" {
  description = "Map of display_name values across all access_package_catalogs, keyed the same as var.access_package_catalogs"
  value       = { for k, v in azuread_access_package_catalog.access_package_catalogs : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "access_package_catalogs_externally_visible" {
  description = "Map of externally_visible values across all access_package_catalogs, keyed the same as var.access_package_catalogs"
  value       = { for k, v in azuread_access_package_catalog.access_package_catalogs : k => v.externally_visible if v.externally_visible != null }
}
output "access_package_catalogs_published" {
  description = "Map of published values across all access_package_catalogs, keyed the same as var.access_package_catalogs"
  value       = { for k, v in azuread_access_package_catalog.access_package_catalogs : k => v.published if v.published != null }
}

