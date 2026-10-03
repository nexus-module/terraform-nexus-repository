mock_provider "nexus" {}

run "maps_all_inputs_to_resource" {
  command = plan

  variables {
    cleanup = {
      policy_names = ["test-policy-name"]
    }
    docker = {
      force_basic_auth   = true
      http_port          = 8082
      https_port         = 8443
      v1_enabled         = true
      subdomain          = "test-subdomain"
      path_based_routing = true
    }
    docker_proxy = {
      index_type                  = "HUB"
      index_url                   = "https://index.example.org"
      cache_foreign_layers        = true
      foreign_layer_url_whitelist = ["https://foreign-layer-url-whitelist.example.org"]
    }
    http_client = {
      blocked    = true
      auto_block = true
      connection = {
        retries                   = 3
        user_agent_suffix         = "test-user-agent-suffix"
        timeout                   = 30
        enable_circular_redirects = true
        enable_cookies            = true
        use_trust_store           = true
      }
      authentication = {
        type        = "username"
        username    = "test-username"
        password    = "test-password"
        ntlm_host   = "test-ntlm-host"
        ntlm_domain = "test-ntlm-domain"
      }
    }
    name = "test-name"
    negative_cache = {
      enabled = true
      ttl     = 30
    }
    online = true
    proxy = {
      remote_url       = "https://remote-url.example.org"
      content_max_age  = 30
      metadata_max_age = 30
    }
    routing_rule = "test-routing-rule"
    storage = {
      blob_store_name                = "test-blob-store-name"
      strict_content_type_validation = true
    }
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.name == var.name
    error_message = "name does not match var.name"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.online == var.online
    error_message = "online does not match var.online"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.routing_rule == var.routing_rule
    error_message = "routing_rule does not match var.routing_rule"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.docker[0].force_basic_auth == var.docker.force_basic_auth
    error_message = "docker[0].force_basic_auth does not match var.docker.force_basic_auth"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.docker[0].http_port == var.docker.http_port
    error_message = "docker[0].http_port does not match var.docker.http_port"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.docker[0].https_port == var.docker.https_port
    error_message = "docker[0].https_port does not match var.docker.https_port"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.docker[0].v1_enabled == var.docker.v1_enabled
    error_message = "docker[0].v1_enabled does not match var.docker.v1_enabled"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.docker[0].subdomain == var.docker.subdomain
    error_message = "docker[0].subdomain does not match var.docker.subdomain"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.docker[0].path_based_routing == var.docker.path_based_routing
    error_message = "docker[0].path_based_routing does not match var.docker.path_based_routing"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.docker_proxy[0].index_type == var.docker_proxy.index_type
    error_message = "docker_proxy[0].index_type does not match var.docker_proxy.index_type"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.docker_proxy[0].index_url == var.docker_proxy.index_url
    error_message = "docker_proxy[0].index_url does not match var.docker_proxy.index_url"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.docker_proxy[0].cache_foreign_layers == var.docker_proxy.cache_foreign_layers
    error_message = "docker_proxy[0].cache_foreign_layers does not match var.docker_proxy.cache_foreign_layers"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.docker_proxy[0].foreign_layer_url_whitelist == var.docker_proxy.foreign_layer_url_whitelist
    error_message = "docker_proxy[0].foreign_layer_url_whitelist does not match var.docker_proxy.foreign_layer_url_whitelist"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.storage[0].blob_store_name == var.storage.blob_store_name
    error_message = "storage[0].blob_store_name does not match var.storage.blob_store_name"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.storage[0].strict_content_type_validation == var.storage.strict_content_type_validation
    error_message = "storage[0].strict_content_type_validation does not match var.storage.strict_content_type_validation"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.proxy[0].remote_url == var.proxy.remote_url
    error_message = "proxy[0].remote_url does not match var.proxy.remote_url"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.proxy[0].content_max_age == var.proxy.content_max_age
    error_message = "proxy[0].content_max_age does not match var.proxy.content_max_age"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.proxy[0].metadata_max_age == var.proxy.metadata_max_age
    error_message = "proxy[0].metadata_max_age does not match var.proxy.metadata_max_age"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.negative_cache[0].enabled == var.negative_cache.enabled
    error_message = "negative_cache[0].enabled does not match var.negative_cache.enabled"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.negative_cache[0].ttl == var.negative_cache.ttl
    error_message = "negative_cache[0].ttl does not match var.negative_cache.ttl"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.http_client[0].blocked == var.http_client.blocked
    error_message = "http_client[0].blocked does not match var.http_client.blocked"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.http_client[0].auto_block == var.http_client.auto_block
    error_message = "http_client[0].auto_block does not match var.http_client.auto_block"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.http_client[0].connection[0].retries == var.http_client.connection.retries
    error_message = "http_client[0].connection[0].retries does not match var.http_client.connection.retries"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.http_client[0].connection[0].user_agent_suffix == var.http_client.connection.user_agent_suffix
    error_message = "http_client[0].connection[0].user_agent_suffix does not match var.http_client.connection.user_agent_suffix"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.http_client[0].connection[0].timeout == var.http_client.connection.timeout
    error_message = "http_client[0].connection[0].timeout does not match var.http_client.connection.timeout"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.http_client[0].connection[0].enable_circular_redirects == var.http_client.connection.enable_circular_redirects
    error_message = "http_client[0].connection[0].enable_circular_redirects does not match var.http_client.connection.enable_circular_redirects"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.http_client[0].connection[0].enable_cookies == var.http_client.connection.enable_cookies
    error_message = "http_client[0].connection[0].enable_cookies does not match var.http_client.connection.enable_cookies"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.http_client[0].connection[0].use_trust_store == var.http_client.connection.use_trust_store
    error_message = "http_client[0].connection[0].use_trust_store does not match var.http_client.connection.use_trust_store"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.http_client[0].authentication[0].type == var.http_client.authentication.type
    error_message = "http_client[0].authentication[0].type does not match var.http_client.authentication.type"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.http_client[0].authentication[0].username == var.http_client.authentication.username
    error_message = "http_client[0].authentication[0].username does not match var.http_client.authentication.username"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.http_client[0].authentication[0].password == var.http_client.authentication.password
    error_message = "http_client[0].authentication[0].password does not match var.http_client.authentication.password"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.http_client[0].authentication[0].ntlm_host == var.http_client.authentication.ntlm_host
    error_message = "http_client[0].authentication[0].ntlm_host does not match var.http_client.authentication.ntlm_host"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.http_client[0].authentication[0].ntlm_domain == var.http_client.authentication.ntlm_domain
    error_message = "http_client[0].authentication[0].ntlm_domain does not match var.http_client.authentication.ntlm_domain"
  }

  assert {
    condition     = nexus_repository_docker_proxy.main.cleanup[0].policy_names == var.cleanup.policy_names
    error_message = "cleanup[0].policy_names does not match var.cleanup.policy_names"
  }

}

run "omits_optional_blocks" {
  command = plan

  variables {
    docker = {
      force_basic_auth = true
      v1_enabled       = true
    }
    docker_proxy = {
      index_type = "HUB"
    }
    http_client = {
      blocked    = true
      auto_block = true
    }
    name = "test-name"
    proxy = {
      remote_url = "https://remote-url.example.org"
    }
    storage = {
      blob_store_name = "test-blob-store-name"
    }
  }

  assert {
    condition     = length(nexus_repository_docker_proxy.main.http_client[0].connection) == 0
    error_message = "http_client[0].connection must be omitted when not set"
  }

  assert {
    condition     = length(nexus_repository_docker_proxy.main.http_client[0].authentication) == 0
    error_message = "http_client[0].authentication must be omitted when not set"
  }

  assert {
    condition     = length(nexus_repository_docker_proxy.main.cleanup) == 0
    error_message = "cleanup must be omitted when not set"
  }

}
