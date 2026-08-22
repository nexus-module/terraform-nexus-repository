module "wrapper" {
  source = "../../modules/nexus-repository-apt-hosted"

  for_each = var.items

  cleanup      = try(each.value.cleanup, var.defaults.cleanup, null)
  component    = try(each.value.component, var.defaults.component, null)
  distribution = try(each.value.distribution, var.defaults.distribution)
  name         = try(each.value.name, var.defaults.name)
  online       = try(each.value.online, var.defaults.online, null)
  signing      = try(each.value.signing, var.defaults.signing)
  storage      = try(each.value.storage, var.defaults.storage)
}
