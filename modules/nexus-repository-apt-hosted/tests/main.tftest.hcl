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
    distribution = "test-distribution"
    name         = "test-name"
    online       = true
    signing = {
      keypair    = "test-keypair"
      passphrase = "test-passphrase"
    }
    storage = {
      blob_store_name                = "test-blob-store-name"
      strict_content_type_validation = true
      write_policy                   = "ALLOW_ONCE"
    }
  }

  assert {
    condition     = nexus_repository_apt_hosted.main.name == var.name
    error_message = "name does not match var.name"
  }

  assert {
    condition     = nexus_repository_apt_hosted.main.online == var.online
    error_message = "online does not match var.online"
  }

  assert {
    condition     = nexus_repository_apt_hosted.main.distribution == var.distribution
    error_message = "distribution does not match var.distribution"
  }

  assert {
    condition     = nexus_repository_apt_hosted.main.signing[0].keypair == var.signing.keypair
    error_message = "signing[0].keypair does not match var.signing.keypair"
  }

  assert {
    condition     = nexus_repository_apt_hosted.main.signing[0].passphrase == var.signing.passphrase
    error_message = "signing[0].passphrase does not match var.signing.passphrase"
  }

  assert {
    condition     = nexus_repository_apt_hosted.main.storage[0].blob_store_name == var.storage.blob_store_name
    error_message = "storage[0].blob_store_name does not match var.storage.blob_store_name"
  }

  assert {
    condition     = nexus_repository_apt_hosted.main.storage[0].strict_content_type_validation == var.storage.strict_content_type_validation
    error_message = "storage[0].strict_content_type_validation does not match var.storage.strict_content_type_validation"
  }

  assert {
    condition     = nexus_repository_apt_hosted.main.storage[0].write_policy == var.storage.write_policy
    error_message = "storage[0].write_policy does not match var.storage.write_policy"
  }

  assert {
    condition     = nexus_repository_apt_hosted.main.cleanup[0].policy_names == var.cleanup.policy_names
    error_message = "cleanup[0].policy_names does not match var.cleanup.policy_names"
  }

  assert {
    condition     = nexus_repository_apt_hosted.main.component[0].proprietary_components == var.component.proprietary_components
    error_message = "component[0].proprietary_components does not match var.component.proprietary_components"
  }

}

run "omits_optional_blocks" {
  command = plan

  variables {
    distribution = "test-distribution"
    name         = "test-name"
    signing = {
      keypair = "test-keypair"
    }
    storage = {
      blob_store_name                = "test-blob-store-name"
      strict_content_type_validation = true
    }
  }

  assert {
    condition     = length(nexus_repository_apt_hosted.main.cleanup) == 0
    error_message = "cleanup must be omitted when not set"
  }

  assert {
    condition     = length(nexus_repository_apt_hosted.main.component) == 0
    error_message = "component must be omitted when not set"
  }

}
