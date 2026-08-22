module "wrapper" {
  source = "../../modules/nexus-repository-apt-proxy"

  for_each = var.items

  cleanup        = try(each.value.cleanup, var.defaults.cleanup, null)
  distribution   = try(each.value.distribution, var.defaults.distribution)
  flat           = try(each.value.flat, var.defaults.flat)
  http_client    = try(each.value.http_client, var.defaults.http_client)
  name           = try(each.value.name, var.defaults.name)
  negative_cache = try(each.value.negative_cache, var.defaults.negative_cache, null)
  online         = try(each.value.online, var.defaults.online, null)
  proxy          = try(each.value.proxy, var.defaults.proxy)
  routing_rule   = try(each.value.routing_rule, var.defaults.routing_rule, "")
  storage        = try(each.value.storage, var.defaults.storage)
}
