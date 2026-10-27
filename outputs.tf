output "access_package_catalogs_id" {
  description = "Map of id values across all access_package_catalogs, keyed the same as var.access_package_catalogs"
  value       = { for k, v in azuread_access_package_catalog.access_package_catalogs : k => v.id }
}
output "access_package_catalogs_description" {
  description = "Map of description values across all access_package_catalogs, keyed the same as var.access_package_catalogs"
  value       = { for k, v in azuread_access_package_catalog.access_package_catalogs : k => v.description }
}
output "access_package_catalogs_display_name" {
  description = "Map of display_name values across all access_package_catalogs, keyed the same as var.access_package_catalogs"
  value       = { for k, v in azuread_access_package_catalog.access_package_catalogs : k => v.display_name }
}
output "access_package_catalogs_externally_visible" {
  description = "Map of externally_visible values across all access_package_catalogs, keyed the same as var.access_package_catalogs"
  value       = { for k, v in azuread_access_package_catalog.access_package_catalogs : k => v.externally_visible }
}
output "access_package_catalogs_published" {
  description = "Map of published values across all access_package_catalogs, keyed the same as var.access_package_catalogs"
  value       = { for k, v in azuread_access_package_catalog.access_package_catalogs : k => v.published }
}

