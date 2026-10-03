mock_provider "nexus" {}

run "maps_all_inputs_to_resource" {
  command = plan

  variables {
    docker = {
      force_basic_auth   = true
      http_port          = 8082
      https_port         = 8443
      v1_enabled         = true
      subdomain          = "test-subdomain"
      path_based_routing = true
    }
    group = {
      member_names    = ["test-member-name"]
      writable_member = "test-writable-member"
    }
    name   = "test-name"
    online = true
    storage = {
      blob_store_name                = "test-blob-store-name"
      strict_content_type_validation = true
    }
  }

  assert {
    condition     = nexus_repository_docker_group.main.name == var.name
    error_message = "name does not match var.name"
  }

  assert {
    condition     = nexus_repository_docker_group.main.online == var.online
    error_message = "online does not match var.online"
  }

  assert {
    condition     = nexus_repository_docker_group.main.docker[0].force_basic_auth == var.docker.force_basic_auth
    error_message = "docker[0].force_basic_auth does not match var.docker.force_basic_auth"
  }

  assert {
    condition     = nexus_repository_docker_group.main.docker[0].http_port == var.docker.http_port
    error_message = "docker[0].http_port does not match var.docker.http_port"
  }

  assert {
    condition     = nexus_repository_docker_group.main.docker[0].https_port == var.docker.https_port
    error_message = "docker[0].https_port does not match var.docker.https_port"
  }

  assert {
    condition     = nexus_repository_docker_group.main.docker[0].v1_enabled == var.docker.v1_enabled
    error_message = "docker[0].v1_enabled does not match var.docker.v1_enabled"
  }

  assert {
    condition     = nexus_repository_docker_group.main.docker[0].subdomain == var.docker.subdomain
    error_message = "docker[0].subdomain does not match var.docker.subdomain"
  }

  assert {
    condition     = nexus_repository_docker_group.main.docker[0].path_based_routing == var.docker.path_based_routing
    error_message = "docker[0].path_based_routing does not match var.docker.path_based_routing"
  }

  assert {
    condition     = nexus_repository_docker_group.main.group[0].member_names == var.group.member_names
    error_message = "group[0].member_names does not match var.group.member_names"
  }

  assert {
    condition     = nexus_repository_docker_group.main.group[0].writable_member == var.group.writable_member
    error_message = "group[0].writable_member does not match var.group.writable_member"
  }

  assert {
    condition     = nexus_repository_docker_group.main.storage[0].blob_store_name == var.storage.blob_store_name
    error_message = "storage[0].blob_store_name does not match var.storage.blob_store_name"
  }

  assert {
    condition     = nexus_repository_docker_group.main.storage[0].strict_content_type_validation == var.storage.strict_content_type_validation
    error_message = "storage[0].strict_content_type_validation does not match var.storage.strict_content_type_validation"
  }

}

run "omits_optional_blocks" {
  command = plan

  variables {
    docker = {
      force_basic_auth = true
      v1_enabled       = true
    }
    group = {
      member_names = ["test-member-name"]
    }
    name = "test-name"
    storage = {
      blob_store_name = "test-blob-store-name"
    }
  }

  assert {
    condition     = nexus_repository_docker_group.main.name == var.name
    error_message = "name does not match var.name"
  }

}
