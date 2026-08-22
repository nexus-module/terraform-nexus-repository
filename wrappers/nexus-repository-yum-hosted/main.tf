module "wrapper" {
  source = "../../modules/nexus-repository-yum-hosted"

  for_each = var.items

  cleanup        = try(each.value.cleanup, var.defaults.cleanup, null)
  component      = try(each.value.component, var.defaults.component, null)
  deploy_policy  = try(each.value.deploy_policy, var.defaults.deploy_policy, "")
  name           = try(each.value.name, var.defaults.name)
  online         = try(each.value.online, var.defaults.online, null)
  repodata_depth = try(each.value.repodata_depth, var.defaults.repodata_depth, null)
  storage        = try(each.value.storage, var.defaults.storage)
}
