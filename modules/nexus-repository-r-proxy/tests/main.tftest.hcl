mock_provider "nexus" {}

run "maps_all_inputs_to_resource" {
  command = plan

  variables {
    cleanup = {
      policy_names = ["test-policy-name"]
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
    condition     = nexus_repository_r_proxy.main.name == var.name
    error_message = "name does not match var.name"
  }

  assert {
    condition     = nexus_repository_r_proxy.main.online == var.online
    error_message = "online does not match var.online"
  }

  assert {
    condition     = nexus_repository_r_proxy.main.routing_rule == var.routing_rule
    error_message = "routing_rule does not match var.routing_rule"
  }

  assert {
    condition     = nexus_repository_r_proxy.main.storage[0].blob_store_name == var.storage.blob_store_name
    error_message = "storage[0].blob_store_name does not match var.storage.blob_store_name"
  }

  assert {
    condition     = nexus_repository_r_proxy.main.storage[0].strict_content_type_validation == var.storage.strict_content_type_validation
    error_message = "storage[0].strict_content_type_validation does not match var.storage.strict_content_type_validation"
  }

  assert {
    condition     = nexus_repository_r_proxy.main.proxy[0].remote_url == var.proxy.remote_url
    error_message = "proxy[0].remote_url does not match var.proxy.remote_url"
  }

  assert {
    condition     = nexus_repository_r_proxy.main.proxy[0].content_max_age == var.proxy.content_max_age
    error_message = "proxy[0].content_max_age does not match var.proxy.content_max_age"
  }

  assert {
    condition     = nexus_repository_r_proxy.main.proxy[0].metadata_max_age == var.proxy.metadata_max_age
    error_message = "proxy[0].metadata_max_age does not match var.proxy.metadata_max_age"
  }

  assert {
    condition     = nexus_repository_r_proxy.main.negative_cache[0].enabled == var.negative_cache.enabled
    error_message = "negative_cache[0].enabled does not match var.negative_cache.enabled"
  }

  assert {
    condition     = nexus_repository_r_proxy.main.negative_cache[0].ttl == var.negative_cache.ttl
    error_message = "negative_cache[0].ttl does not match var.negative_cache.ttl"
  }

  assert {
    condition     = nexus_repository_r_proxy.main.http_client[0].blocked == var.http_client.blocked
    error_message = "http_client[0].blocked does not match var.http_client.blocked"
  }

  assert {
    condition     = nexus_repository_r_proxy.main.http_client[0].auto_block == var.http_client.auto_block
    error_message = "http_client[0].auto_block does not match var.http_client.auto_block"
  }

  assert {
    condition     = nexus_repository_r_proxy.main.http_client[0].connection[0].retries == var.http_client.connection.retries
    error_message = "http_client[0].connection[0].retries does not match var.http_client.connection.retries"
  }

  assert {
    condition     = nexus_repository_r_proxy.main.http_client[0].connection[0].user_agent_suffix == var.http_client.connection.user_agent_suffix
    error_message = "http_client[0].connection[0].user_agent_suffix does not match var.http_client.connection.user_agent_suffix"
  }

  assert {
    condition     = nexus_repository_r_proxy.main.http_client[0].connection[0].timeout == var.http_client.connection.timeout
    error_message = "http_client[0].connection[0].timeout does not match var.http_client.connection.timeout"
  }

  assert {
    condition     = nexus_repository_r_proxy.main.http_client[0].connection[0].enable_circular_redirects == var.http_client.connection.enable_circular_redirects
    error_message = "http_client[0].connection[0].enable_circular_redirects does not match var.http_client.connection.enable_circular_redirects"
  }

  assert {
    condition     = nexus_repository_r_proxy.main.http_client[0].connection[0].enable_cookies == var.http_client.connection.enable_cookies
    error_message = "http_client[0].connection[0].enable_cookies does not match var.http_client.connection.enable_cookies"
  }

  assert {
    condition     = nexus_repository_r_proxy.main.http_client[0].connection[0].use_trust_store == var.http_client.connection.use_trust_store
    error_message = "http_client[0].connection[0].use_trust_store does not match var.http_client.connection.use_trust_store"
  }

  assert {
    condition     = nexus_repository_r_proxy.main.http_client[0].authentication[0].type == var.http_client.authentication.type
    error_message = "http_client[0].authentication[0].type does not match var.http_client.authentication.type"
  }

  assert {
    condition     = nexus_repository_r_proxy.main.http_client[0].authentication[0].username == var.http_client.authentication.username
    error_message = "http_client[0].authentication[0].username does not match var.http_client.authentication.username"
  }

  assert {
    condition     = nexus_repository_r_proxy.main.http_client[0].authentication[0].password == var.http_client.authentication.password
    error_message = "http_client[0].authentication[0].password does not match var.http_client.authentication.password"
  }

  assert {
    condition     = nexus_repository_r_proxy.main.http_client[0].authentication[0].ntlm_host == var.http_client.authentication.ntlm_host
    error_message = "http_client[0].authentication[0].ntlm_host does not match var.http_client.authentication.ntlm_host"
  }

  assert {
    condition     = nexus_repository_r_proxy.main.http_client[0].authentication[0].ntlm_domain == var.http_client.authentication.ntlm_domain
    error_message = "http_client[0].authentication[0].ntlm_domain does not match var.http_client.authentication.ntlm_domain"
  }

  assert {
    condition     = nexus_repository_r_proxy.main.cleanup[0].policy_names == var.cleanup.policy_names
    error_message = "cleanup[0].policy_names does not match var.cleanup.policy_names"
  }

}

run "omits_optional_blocks" {
  command = plan

  variables {
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
    condition     = length(nexus_repository_r_proxy.main.http_client[0].connection) == 0
    error_message = "http_client[0].connection must be omitted when not set"
  }

  assert {
    condition     = length(nexus_repository_r_proxy.main.http_client[0].authentication) == 0
    error_message = "http_client[0].authentication must be omitted when not set"
  }

  assert {
    condition     = length(nexus_repository_r_proxy.main.cleanup) == 0
    error_message = "cleanup must be omitted when not set"
  }

}
