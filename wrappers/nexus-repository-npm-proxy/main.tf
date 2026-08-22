module "wrapper" {
  source = "../../modules/nexus-repository-npm-proxy"

  for_each = var.items

  cleanup              = try(each.value.cleanup, var.defaults.cleanup, null)
  http_client          = try(each.value.http_client, var.defaults.http_client)
  name                 = try(each.value.name, var.defaults.name)
  negative_cache       = try(each.value.negative_cache, var.defaults.negative_cache, null)
  online               = try(each.value.online, var.defaults.online, null)
  proxy                = try(each.value.proxy, var.defaults.proxy)
  remove_non_cataloged = try(each.value.remove_non_cataloged, var.defaults.remove_non_cataloged, null)
  remove_quarantined   = try(each.value.remove_quarantined, var.defaults.remove_quarantined, null)
  routing_rule         = try(each.value.routing_rule, var.defaults.routing_rule, "")
  storage              = try(each.value.storage, var.defaults.storage)
}
