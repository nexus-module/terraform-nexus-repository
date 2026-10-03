mock_provider "nexus" {}

run "maps_all_inputs_to_resource" {
  command = plan

  variables {
    group = {
      member_names = ["test-member-name"]
    }
    name   = "test-name"
    online = true
    storage = {
      blob_store_name                = "test-blob-store-name"
      strict_content_type_validation = true
    }
    yum_signing = {
      keypair    = "test-keypair"
      passphrase = "test-passphrase"
    }
  }

  assert {
    condition     = nexus_repository_yum_group.main.name == var.name
    error_message = "name does not match var.name"
  }

  assert {
    condition     = nexus_repository_yum_group.main.online == var.online
    error_message = "online does not match var.online"
  }

  assert {
    condition     = nexus_repository_yum_group.main.yum_signing[0].keypair == var.yum_signing.keypair
    error_message = "yum_signing[0].keypair does not match var.yum_signing.keypair"
  }

  assert {
    condition     = nexus_repository_yum_group.main.yum_signing[0].passphrase == var.yum_signing.passphrase
    error_message = "yum_signing[0].passphrase does not match var.yum_signing.passphrase"
  }

  assert {
    condition     = nexus_repository_yum_group.main.group[0].member_names == var.group.member_names
    error_message = "group[0].member_names does not match var.group.member_names"
  }

  assert {
    condition     = nexus_repository_yum_group.main.storage[0].blob_store_name == var.storage.blob_store_name
    error_message = "storage[0].blob_store_name does not match var.storage.blob_store_name"
  }

  assert {
    condition     = nexus_repository_yum_group.main.storage[0].strict_content_type_validation == var.storage.strict_content_type_validation
    error_message = "storage[0].strict_content_type_validation does not match var.storage.strict_content_type_validation"
  }

}

run "omits_optional_blocks" {
  command = plan

  variables {
    group = {
      member_names = ["test-member-name"]
    }
    name = "test-name"
    storage = {
      blob_store_name = "test-blob-store-name"
    }
  }

  assert {
    condition     = length(nexus_repository_yum_group.main.yum_signing) == 0
    error_message = "yum_signing must be omitted when not set"
  }

}
