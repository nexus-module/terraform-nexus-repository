################################################################################
# Cargo Group
################################################################################
output "name" {
  description = "The name of the resource."
  value       = nexus_repository_cargo_group.main.name
}
