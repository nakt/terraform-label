output "namespace" {
  value       = local.namespace
  description = "Normalized name space "
}

output "name" {
  value       = local.name
  description = "Normalized name"
}

output "environment" {
  value       = local.environment
  description = "Normalized environment name"
}

output "id" {
  value       = local.id
  description = "Genereted ID"
}

output "tags" {
  value       = local.tags
  description = "Normalized tag map"
}

output "tags_as_list_of_maps" {
  value       = local.tags_as_list_of_maps
  description = "Additional tags as a list of maps"
}
