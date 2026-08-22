module "wrapper" {
  source = "../../modules/nexus-repository-docker-group"

  for_each = var.items

  docker  = try(each.value.docker, var.defaults.docker)
  group   = try(each.value.group, var.defaults.group)
  name    = try(each.value.name, var.defaults.name)
  online  = try(each.value.online, var.defaults.online, null)
  storage = try(each.value.storage, var.defaults.storage)
}
