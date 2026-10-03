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
    maven = {
      version_policy      = "RELEASE"
      layout_policy       = "STRICT"
      content_disposition = "INLINE"
    }
    name   = "test-name"
    online = true
    storage = {
      blob_store_name                = "test-blob-store-name"
      strict_content_type_validation = true
      write_policy                   = "ALLOW_ONCE"
    }
  }

  assert {
    condition     = nexus_repository_maven_hosted.main.name == var.name
    error_message = "name does not match var.name"
  }

  assert {
    condition     = nexus_repository_maven_hosted.main.online == var.online
    error_message = "online does not match var.online"
  }

  assert {
    condition     = nexus_repository_maven_hosted.main.storage[0].blob_store_name == var.storage.blob_store_name
    error_message = "storage[0].blob_store_name does not match var.storage.blob_store_name"
  }

  assert {
    condition     = nexus_repository_maven_hosted.main.storage[0].strict_content_type_validation == var.storage.strict_content_type_validation
    error_message = "storage[0].strict_content_type_validation does not match var.storage.strict_content_type_validation"
  }

  assert {
    condition     = nexus_repository_maven_hosted.main.storage[0].write_policy == var.storage.write_policy
    error_message = "storage[0].write_policy does not match var.storage.write_policy"
  }

  assert {
    condition     = nexus_repository_maven_hosted.main.maven[0].version_policy == var.maven.version_policy
    error_message = "maven[0].version_policy does not match var.maven.version_policy"
  }

  assert {
    condition     = nexus_repository_maven_hosted.main.maven[0].layout_policy == var.maven.layout_policy
    error_message = "maven[0].layout_policy does not match var.maven.layout_policy"
  }

  assert {
    condition     = nexus_repository_maven_hosted.main.maven[0].content_disposition == var.maven.content_disposition
    error_message = "maven[0].content_disposition does not match var.maven.content_disposition"
  }

  assert {
    condition     = nexus_repository_maven_hosted.main.cleanup[0].policy_names == var.cleanup.policy_names
    error_message = "cleanup[0].policy_names does not match var.cleanup.policy_names"
  }

  assert {
    condition     = nexus_repository_maven_hosted.main.component[0].proprietary_components == var.component.proprietary_components
    error_message = "component[0].proprietary_components does not match var.component.proprietary_components"
  }

}

run "omits_optional_blocks" {
  command = plan

  variables {
    maven = {
      version_policy = "RELEASE"
      layout_policy  = "STRICT"
    }
    name = "test-name"
    storage = {
      blob_store_name                = "test-blob-store-name"
      strict_content_type_validation = true
    }
  }

  assert {
    condition     = length(nexus_repository_maven_hosted.main.cleanup) == 0
    error_message = "cleanup must be omitted when not set"
  }

  assert {
    condition     = length(nexus_repository_maven_hosted.main.component) == 0
    error_message = "component must be omitted when not set"
  }

}
