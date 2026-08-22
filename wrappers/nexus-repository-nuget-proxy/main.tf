module "wrapper" {
  source = "../../modules/nexus-repository-nuget-proxy"

  for_each = var.items

  cleanup                  = try(each.value.cleanup, var.defaults.cleanup, null)
  http_client              = try(each.value.http_client, var.defaults.http_client)
  name                     = try(each.value.name, var.defaults.name)
  negative_cache           = try(each.value.negative_cache, var.defaults.negative_cache, null)
  nuget_version            = try(each.value.nuget_version, var.defaults.nuget_version)
  online                   = try(each.value.online, var.defaults.online, null)
  proxy                    = try(each.value.proxy, var.defaults.proxy)
  query_cache_item_max_age = try(each.value.query_cache_item_max_age, var.defaults.query_cache_item_max_age)
  routing_rule             = try(each.value.routing_rule, var.defaults.routing_rule, "")
  storage                  = try(each.value.storage, var.defaults.storage)
}
