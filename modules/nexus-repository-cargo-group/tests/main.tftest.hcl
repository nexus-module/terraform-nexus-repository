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
  }

  assert {
    condition     = nexus_repository_cargo_group.main.name == var.name
    error_message = "name does not match var.name"
  }

  assert {
    condition     = nexus_repository_cargo_group.main.online == var.online
    error_message = "online does not match var.online"
  }

  assert {
    condition     = nexus_repository_cargo_group.main.group[0].member_names == var.group.member_names
    error_message = "group[0].member_names does not match var.group.member_names"
  }

  assert {
    condition     = nexus_repository_cargo_group.main.storage[0].blob_store_name == var.storage.blob_store_name
    error_message = "storage[0].blob_store_name does not match var.storage.blob_store_name"
  }

  assert {
    condition     = nexus_repository_cargo_group.main.storage[0].strict_content_type_validation == var.storage.strict_content_type_validation
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
    condition     = nexus_repository_cargo_group.main.name == var.name
    error_message = "name does not match var.name"
  }

}
