module "wrapper" {
  source = "../../modules/nexus-repository-docker-proxy"

  for_each = var.items

  cleanup        = try(each.value.cleanup, var.defaults.cleanup, null)
  docker         = try(each.value.docker, var.defaults.docker)
  docker_proxy   = try(each.value.docker_proxy, var.defaults.docker_proxy)
  http_client    = try(each.value.http_client, var.defaults.http_client)
  name           = try(each.value.name, var.defaults.name)
  negative_cache = try(each.value.negative_cache, var.defaults.negative_cache, null)
  online         = try(each.value.online, var.defaults.online, null)
  proxy          = try(each.value.proxy, var.defaults.proxy)
  routing_rule   = try(each.value.routing_rule, var.defaults.routing_rule, "")
  storage        = try(each.value.storage, var.defaults.storage)
}
