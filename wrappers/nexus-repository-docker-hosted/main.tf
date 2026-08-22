module "wrapper" {
  source = "../../modules/nexus-repository-docker-hosted"

  for_each = var.items

  cleanup   = try(each.value.cleanup, var.defaults.cleanup, null)
  component = try(each.value.component, var.defaults.component, null)
  docker    = try(each.value.docker, var.defaults.docker)
  name      = try(each.value.name, var.defaults.name)
  online    = try(each.value.online, var.defaults.online, null)
  storage   = try(each.value.storage, var.defaults.storage)
}
