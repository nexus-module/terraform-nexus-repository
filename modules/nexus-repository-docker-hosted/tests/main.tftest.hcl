mock_provider "nexus" {}

run "maps_all_inputs_to_resource" {
  command = plan

  variables {
    cleanup = {
      policy_names = ["test-policy-name"]
    }
    component = {
      proprietary_components = true
    }
    docker = {
      force_basic_auth   = true
      http_port          = 8082
      https_port         = 8443
      v1_enabled         = true
      subdomain          = "test-subdomain"
      path_based_routing = true
    }
    name   = "test-name"
    online = true
    storage = {
      blob_store_name                = "test-blob-store-name"
      strict_content_type_validation = true
      write_policy                   = "ALLOW_ONCE"
      latest_policy                  = true
    }
  }

  assert {
    condition     = nexus_repository_docker_hosted.main.name == var.name
    error_message = "name does not match var.name"
  }

  assert {
    condition     = nexus_repository_docker_hosted.main.online == var.online
    error_message = "online does not match var.online"
  }

  assert {
    condition     = nexus_repository_docker_hosted.main.docker[0].force_basic_auth == var.docker.force_basic_auth
    error_message = "docker[0].force_basic_auth does not match var.docker.force_basic_auth"
  }

  assert {
    condition     = nexus_repository_docker_hosted.main.docker[0].http_port == var.docker.http_port
    error_message = "docker[0].http_port does not match var.docker.http_port"
  }

  assert {
    condition     = nexus_repository_docker_hosted.main.docker[0].https_port == var.docker.https_port
    error_message = "docker[0].https_port does not match var.docker.https_port"
  }

  assert {
    condition     = nexus_repository_docker_hosted.main.docker[0].v1_enabled == var.docker.v1_enabled
    error_message = "docker[0].v1_enabled does not match var.docker.v1_enabled"
  }

  assert {
    condition     = nexus_repository_docker_hosted.main.docker[0].subdomain == var.docker.subdomain
    error_message = "docker[0].subdomain does not match var.docker.subdomain"
  }

  assert {
    condition     = nexus_repository_docker_hosted.main.docker[0].path_based_routing == var.docker.path_based_routing
    error_message = "docker[0].path_based_routing does not match var.docker.path_based_routing"
  }

  assert {
    condition     = nexus_repository_docker_hosted.main.storage[0].blob_store_name == var.storage.blob_store_name
    error_message = "storage[0].blob_store_name does not match var.storage.blob_store_name"
  }

  assert {
    condition     = nexus_repository_docker_hosted.main.storage[0].strict_content_type_validation == var.storage.strict_content_type_validation
    error_message = "storage[0].strict_content_type_validation does not match var.storage.strict_content_type_validation"
  }

  assert {
    condition     = nexus_repository_docker_hosted.main.storage[0].write_policy == var.storage.write_policy
    error_message = "storage[0].write_policy does not match var.storage.write_policy"
  }

  assert {
    condition     = nexus_repository_docker_hosted.main.storage[0].latest_policy == var.storage.latest_policy
    error_message = "storage[0].latest_policy does not match var.storage.latest_policy"
  }

  assert {
    condition     = nexus_repository_docker_hosted.main.cleanup[0].policy_names == var.cleanup.policy_names
    error_message = "cleanup[0].policy_names does not match var.cleanup.policy_names"
  }

  assert {
    condition     = nexus_repository_docker_hosted.main.component[0].proprietary_components == var.component.proprietary_components
    error_message = "component[0].proprietary_components does not match var.component.proprietary_components"
  }

}

run "omits_optional_blocks" {
  command = plan

  variables {
    docker = {
      force_basic_auth = true
      v1_enabled       = true
    }
    name = "test-name"
    storage = {
      blob_store_name                = "test-blob-store-name"
      strict_content_type_validation = true
    }
  }

  assert {
    condition     = length(nexus_repository_docker_hosted.main.cleanup) == 0
    error_message = "cleanup must be omitted when not set"
  }

  assert {
    condition     = length(nexus_repository_docker_hosted.main.component) == 0
    error_message = "component must be omitted when not set"
  }

}
