module "wrapper" {
  source = "../../modules/nexus-repository-r-group"

  for_each = var.items

  group   = try(each.value.group, var.defaults.group)
  name    = try(each.value.name, var.defaults.name)
  online  = try(each.value.online, var.defaults.online, null)
  storage = try(each.value.storage, var.defaults.storage)
}
