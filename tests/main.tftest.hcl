mock_provider "nexus" {}

run "creates_one_module_per_item" {
  command = plan

  variables {
    nexus_repository_apt_hosted = [
      {
        name         = "test-name-a"
        online       = true
        distribution = "test-distribution-a"
        signing = {
          keypair    = "test-keypair-a"
          passphrase = "test-passphrase-a"
        }
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
          write_policy                   = "ALLOW_ONCE"
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
        component = {
          proprietary_components = true
        }
      },
      {
        name         = "test-name-b"
        online       = true
        distribution = "test-distribution-b"
        signing = {
          keypair    = "test-keypair-b"
          passphrase = "test-passphrase-b"
        }
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
          write_policy                   = "ALLOW_ONCE"
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
        component = {
          proprietary_components = true
        }
      }
    ]
    nexus_repository_apt_proxy = [
      {
        name         = "test-name-a"
        online       = true
        routing_rule = "test-routing-rule-a"
        distribution = "test-distribution-a"
        flat         = true
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-a.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-a"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-a"
            password    = "test-password-a"
            ntlm_host   = "test-ntlm-host-a"
            ntlm_domain = "test-ntlm-domain-a"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
      },
      {
        name         = "test-name-b"
        online       = true
        routing_rule = "test-routing-rule-b"
        distribution = "test-distribution-b"
        flat         = true
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-b.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-b"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-b"
            password    = "test-password-b"
            ntlm_host   = "test-ntlm-host-b"
            ntlm_domain = "test-ntlm-domain-b"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
      }
    ]
    nexus_repository_bower_group = [
      {
        name   = "test-name-a"
        online = true
        group = {
          member_names = ["test-member-name-a"]
        }
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
      },
      {
        name   = "test-name-b"
        online = true
        group = {
          member_names = ["test-member-name-b"]
        }
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
      }
    ]
    nexus_repository_bower_hosted = [
      {
        name   = "test-name-a"
        online = true
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
          write_policy                   = "ALLOW_ONCE"
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
        component = {
          proprietary_components = true
        }
      },
      {
        name   = "test-name-b"
        online = true
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
          write_policy                   = "ALLOW_ONCE"
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
        component = {
          proprietary_components = true
        }
      }
    ]
    nexus_repository_bower_proxy = [
      {
        name                 = "test-name-a"
        online               = true
        routing_rule         = "test-routing-rule-a"
        rewrite_package_urls = true
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-a.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-a"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-a"
            password    = "test-password-a"
            ntlm_host   = "test-ntlm-host-a"
            ntlm_domain = "test-ntlm-domain-a"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
      },
      {
        name                 = "test-name-b"
        online               = true
        routing_rule         = "test-routing-rule-b"
        rewrite_package_urls = true
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-b.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-b"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-b"
            password    = "test-password-b"
            ntlm_host   = "test-ntlm-host-b"
            ntlm_domain = "test-ntlm-domain-b"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
      }
    ]
    nexus_repository_cargo_group = [
      {
        name   = "test-name-a"
        online = true
        group = {
          member_names = ["test-member-name-a"]
        }
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
      },
      {
        name   = "test-name-b"
        online = true
        group = {
          member_names = ["test-member-name-b"]
        }
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
      }
    ]
    nexus_repository_cargo_hosted = [
      {
        name   = "test-name-a"
        online = true
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
          write_policy                   = "ALLOW_ONCE"
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
        component = {
          proprietary_components = true
        }
      },
      {
        name   = "test-name-b"
        online = true
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
          write_policy                   = "ALLOW_ONCE"
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
        component = {
          proprietary_components = true
        }
      }
    ]
    nexus_repository_cargo_proxy = [
      {
        name         = "test-name-a"
        online       = true
        routing_rule = "test-routing-rule-a"
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-a.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-a"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-a"
            password    = "test-password-a"
            ntlm_host   = "test-ntlm-host-a"
            ntlm_domain = "test-ntlm-domain-a"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
      },
      {
        name         = "test-name-b"
        online       = true
        routing_rule = "test-routing-rule-b"
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-b.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-b"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-b"
            password    = "test-password-b"
            ntlm_host   = "test-ntlm-host-b"
            ntlm_domain = "test-ntlm-domain-b"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
      }
    ]
    nexus_repository_cocoapods_proxy = [
      {
        name         = "test-name-a"
        online       = true
        routing_rule = "test-routing-rule-a"
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-a.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-a"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-a"
            password    = "test-password-a"
            ntlm_host   = "test-ntlm-host-a"
            ntlm_domain = "test-ntlm-domain-a"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
      },
      {
        name         = "test-name-b"
        online       = true
        routing_rule = "test-routing-rule-b"
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-b.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-b"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-b"
            password    = "test-password-b"
            ntlm_host   = "test-ntlm-host-b"
            ntlm_domain = "test-ntlm-domain-b"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
      }
    ]
    nexus_repository_conan_proxy = [
      {
        name         = "test-name-a"
        online       = true
        routing_rule = "test-routing-rule-a"
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-a.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-a"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-a"
            password    = "test-password-a"
            ntlm_host   = "test-ntlm-host-a"
            ntlm_domain = "test-ntlm-domain-a"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
      },
      {
        name         = "test-name-b"
        online       = true
        routing_rule = "test-routing-rule-b"
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-b.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-b"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-b"
            password    = "test-password-b"
            ntlm_host   = "test-ntlm-host-b"
            ntlm_domain = "test-ntlm-domain-b"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
      }
    ]
    nexus_repository_conda_proxy = [
      {
        name         = "test-name-a"
        online       = true
        routing_rule = "test-routing-rule-a"
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-a.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-a"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-a"
            password    = "test-password-a"
            ntlm_host   = "test-ntlm-host-a"
            ntlm_domain = "test-ntlm-domain-a"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
      },
      {
        name         = "test-name-b"
        online       = true
        routing_rule = "test-routing-rule-b"
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-b.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-b"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-b"
            password    = "test-password-b"
            ntlm_host   = "test-ntlm-host-b"
            ntlm_domain = "test-ntlm-domain-b"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
      }
    ]
    nexus_repository_docker_group = [
      {
        name   = "test-name-a"
        online = true
        docker = {
          force_basic_auth   = true
          http_port          = 8082
          https_port         = 8443
          v1_enabled         = true
          subdomain          = "test-subdomain-a"
          path_based_routing = true
        }
        group = {
          member_names = ["test-member-name-a"]
        }
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
      },
      {
        name   = "test-name-b"
        online = true
        docker = {
          force_basic_auth   = true
          http_port          = 8082
          https_port         = 8443
          v1_enabled         = true
          subdomain          = "test-subdomain-b"
          path_based_routing = true
        }
        group = {
          member_names = ["test-member-name-b"]
        }
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
      }
    ]
    nexus_repository_docker_hosted = [
      {
        name   = "test-name-a"
        online = true
        docker = {
          force_basic_auth   = true
          http_port          = 8082
          https_port         = 8443
          v1_enabled         = true
          subdomain          = "test-subdomain-a"
          path_based_routing = true
        }
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
          write_policy                   = "ALLOW_ONCE"
          latest_policy                  = true
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
        component = {
          proprietary_components = true
        }
      },
      {
        name   = "test-name-b"
        online = true
        docker = {
          force_basic_auth   = true
          http_port          = 8082
          https_port         = 8443
          v1_enabled         = true
          subdomain          = "test-subdomain-b"
          path_based_routing = true
        }
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
          write_policy                   = "ALLOW_ONCE"
          latest_policy                  = true
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
        component = {
          proprietary_components = true
        }
      }
    ]
    nexus_repository_docker_proxy = [
      {
        name         = "test-name-a"
        online       = true
        routing_rule = "test-routing-rule-a"
        docker = {
          force_basic_auth   = true
          http_port          = 8082
          https_port         = 8443
          v1_enabled         = true
          subdomain          = "test-subdomain-a"
          path_based_routing = true
        }
        docker_proxy = {
          index_type                  = "HUB"
          index_url                   = "https://index.example.org"
          cache_foreign_layers        = true
          foreign_layer_url_whitelist = ["https://foreign-layer-url-whitelist-a.example.org"]
        }
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-a.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-a"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-a"
            password    = "test-password-a"
            ntlm_host   = "test-ntlm-host-a"
            ntlm_domain = "test-ntlm-domain-a"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
      },
      {
        name         = "test-name-b"
        online       = true
        routing_rule = "test-routing-rule-b"
        docker = {
          force_basic_auth   = true
          http_port          = 8082
          https_port         = 8443
          v1_enabled         = true
          subdomain          = "test-subdomain-b"
          path_based_routing = true
        }
        docker_proxy = {
          index_type                  = "HUB"
          index_url                   = "https://index.example.org"
          cache_foreign_layers        = true
          foreign_layer_url_whitelist = ["https://foreign-layer-url-whitelist-b.example.org"]
        }
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-b.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-b"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-b"
            password    = "test-password-b"
            ntlm_host   = "test-ntlm-host-b"
            ntlm_domain = "test-ntlm-domain-b"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
      }
    ]
    nexus_repository_gitlfs_hosted = [
      {
        name   = "test-name-a"
        online = true
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
        component = {
          proprietary_components = true
        }
      },
      {
        name   = "test-name-b"
        online = true
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
        component = {
          proprietary_components = true
        }
      }
    ]
    nexus_repository_go_group = [
      {
        name   = "test-name-a"
        online = true
        group = {
          member_names = ["test-member-name-a"]
        }
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
      },
      {
        name   = "test-name-b"
        online = true
        group = {
          member_names = ["test-member-name-b"]
        }
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
      }
    ]
    nexus_repository_go_proxy = [
      {
        name         = "test-name-a"
        online       = true
        routing_rule = "test-routing-rule-a"
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-a.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-a"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-a"
            password    = "test-password-a"
            ntlm_host   = "test-ntlm-host-a"
            ntlm_domain = "test-ntlm-domain-a"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
      },
      {
        name         = "test-name-b"
        online       = true
        routing_rule = "test-routing-rule-b"
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-b.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-b"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-b"
            password    = "test-password-b"
            ntlm_host   = "test-ntlm-host-b"
            ntlm_domain = "test-ntlm-domain-b"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
      }
    ]
    nexus_repository_helm_hosted = [
      {
        name   = "test-name-a"
        online = true
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
        component = {
          proprietary_components = true
        }
      },
      {
        name   = "test-name-b"
        online = true
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
        component = {
          proprietary_components = true
        }
      }
    ]
    nexus_repository_helm_proxy = [
      {
        name         = "test-name-a"
        online       = true
        routing_rule = "test-routing-rule-a"
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-a.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-a"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-a"
            password    = "test-password-a"
            ntlm_host   = "test-ntlm-host-a"
            ntlm_domain = "test-ntlm-domain-a"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
      },
      {
        name         = "test-name-b"
        online       = true
        routing_rule = "test-routing-rule-b"
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-b.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-b"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-b"
            password    = "test-password-b"
            ntlm_host   = "test-ntlm-host-b"
            ntlm_domain = "test-ntlm-domain-b"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
      }
    ]
    nexus_repository_maven_group = [
      {
        name   = "test-name-a"
        online = true
        group = {
          member_names = ["test-member-name-a"]
        }
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
      },
      {
        name   = "test-name-b"
        online = true
        group = {
          member_names = ["test-member-name-b"]
        }
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
      }
    ]
    nexus_repository_maven_hosted = [
      {
        name   = "test-name-a"
        online = true
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        maven = {
          version_policy      = "RELEASE"
          layout_policy       = "STRICT"
          content_disposition = "INLINE"
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
        component = {
          proprietary_components = true
        }
      },
      {
        name   = "test-name-b"
        online = true
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        maven = {
          version_policy      = "RELEASE"
          layout_policy       = "STRICT"
          content_disposition = "INLINE"
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
        component = {
          proprietary_components = true
        }
      }
    ]
    nexus_repository_maven_proxy = [
      {
        name         = "test-name-a"
        online       = true
        routing_rule = "test-routing-rule-a"
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-a.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-a"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-a"
            password    = "test-password-a"
            ntlm_host   = "test-ntlm-host-a"
            ntlm_domain = "test-ntlm-domain-a"
          }
        }
        maven = {
          version_policy      = "RELEASE"
          layout_policy       = "STRICT"
          content_disposition = "INLINE"
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
      },
      {
        name         = "test-name-b"
        online       = true
        routing_rule = "test-routing-rule-b"
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-b.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-b"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-b"
            password    = "test-password-b"
            ntlm_host   = "test-ntlm-host-b"
            ntlm_domain = "test-ntlm-domain-b"
          }
        }
        maven = {
          version_policy      = "RELEASE"
          layout_policy       = "STRICT"
          content_disposition = "INLINE"
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
      }
    ]
    nexus_repository_npm_group = [
      {
        name   = "test-name-a"
        online = true
        group = {
          member_names = ["test-member-name-a"]
        }
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
      },
      {
        name   = "test-name-b"
        online = true
        group = {
          member_names = ["test-member-name-b"]
        }
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
      }
    ]
    nexus_repository_npm_hosted = [
      {
        name   = "test-name-a"
        online = true
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
        component = {
          proprietary_components = true
        }
      },
      {
        name   = "test-name-b"
        online = true
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
        component = {
          proprietary_components = true
        }
      }
    ]
    nexus_repository_npm_proxy = [
      {
        name         = "test-name-a"
        online       = true
        routing_rule = "test-routing-rule-a"
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-a.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        remove_non_cataloged = true
        remove_quarantined   = true
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-a"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-a"
            password    = "test-password-a"
            ntlm_host   = "test-ntlm-host-a"
            ntlm_domain = "test-ntlm-domain-a"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
      },
      {
        name         = "test-name-b"
        online       = true
        routing_rule = "test-routing-rule-b"
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-b.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        remove_non_cataloged = true
        remove_quarantined   = true
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-b"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-b"
            password    = "test-password-b"
            ntlm_host   = "test-ntlm-host-b"
            ntlm_domain = "test-ntlm-domain-b"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
      }
    ]
    nexus_repository_nuget_group = [
      {
        name   = "test-name-a"
        online = true
        group = {
          member_names = ["test-member-name-a"]
        }
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
      },
      {
        name   = "test-name-b"
        online = true
        group = {
          member_names = ["test-member-name-b"]
        }
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
      }
    ]
    nexus_repository_nuget_hosted = [
      {
        name   = "test-name-a"
        online = true
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
        component = {
          proprietary_components = true
        }
      },
      {
        name   = "test-name-b"
        online = true
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
        component = {
          proprietary_components = true
        }
      }
    ]
    nexus_repository_nuget_proxy = [
      {
        name                     = "test-name-a"
        online                   = true
        routing_rule             = "test-routing-rule-a"
        nuget_version            = "test-nuget-version-a"
        query_cache_item_max_age = 30
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-a.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-a"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-a"
            password    = "test-password-a"
            ntlm_host   = "test-ntlm-host-a"
            ntlm_domain = "test-ntlm-domain-a"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
      },
      {
        name                     = "test-name-b"
        online                   = true
        routing_rule             = "test-routing-rule-b"
        nuget_version            = "test-nuget-version-b"
        query_cache_item_max_age = 30
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-b.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-b"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-b"
            password    = "test-password-b"
            ntlm_host   = "test-ntlm-host-b"
            ntlm_domain = "test-ntlm-domain-b"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
      }
    ]
    nexus_repository_p2_proxy = [
      {
        name         = "test-name-a"
        online       = true
        routing_rule = "test-routing-rule-a"
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-a.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-a"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-a"
            password    = "test-password-a"
            ntlm_host   = "test-ntlm-host-a"
            ntlm_domain = "test-ntlm-domain-a"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
      },
      {
        name         = "test-name-b"
        online       = true
        routing_rule = "test-routing-rule-b"
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-b.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-b"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-b"
            password    = "test-password-b"
            ntlm_host   = "test-ntlm-host-b"
            ntlm_domain = "test-ntlm-domain-b"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
      }
    ]
    nexus_repository_pypi_group = [
      {
        name   = "test-name-a"
        online = true
        group = {
          member_names = ["test-member-name-a"]
        }
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
      },
      {
        name   = "test-name-b"
        online = true
        group = {
          member_names = ["test-member-name-b"]
        }
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
      }
    ]
    nexus_repository_pypi_hosted = [
      {
        name   = "test-name-a"
        online = true
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
        component = {
          proprietary_components = true
        }
      },
      {
        name   = "test-name-b"
        online = true
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
        component = {
          proprietary_components = true
        }
      }
    ]
    nexus_repository_pypi_proxy = [
      {
        name         = "test-name-a"
        online       = true
        routing_rule = "test-routing-rule-a"
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-a.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-a"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-a"
            password    = "test-password-a"
            ntlm_host   = "test-ntlm-host-a"
            ntlm_domain = "test-ntlm-domain-a"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
      },
      {
        name         = "test-name-b"
        online       = true
        routing_rule = "test-routing-rule-b"
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-b.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-b"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-b"
            password    = "test-password-b"
            ntlm_host   = "test-ntlm-host-b"
            ntlm_domain = "test-ntlm-domain-b"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
      }
    ]
    nexus_repository_r_group = [
      {
        name   = "test-name-a"
        online = true
        group = {
          member_names = ["test-member-name-a"]
        }
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
      },
      {
        name   = "test-name-b"
        online = true
        group = {
          member_names = ["test-member-name-b"]
        }
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
      }
    ]
    nexus_repository_r_hosted = [
      {
        name   = "test-name-a"
        online = true
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
        component = {
          proprietary_components = true
        }
      },
      {
        name   = "test-name-b"
        online = true
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
        component = {
          proprietary_components = true
        }
      }
    ]
    nexus_repository_r_proxy = [
      {
        name         = "test-name-a"
        online       = true
        routing_rule = "test-routing-rule-a"
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-a.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-a"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-a"
            password    = "test-password-a"
            ntlm_host   = "test-ntlm-host-a"
            ntlm_domain = "test-ntlm-domain-a"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
      },
      {
        name         = "test-name-b"
        online       = true
        routing_rule = "test-routing-rule-b"
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-b.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-b"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-b"
            password    = "test-password-b"
            ntlm_host   = "test-ntlm-host-b"
            ntlm_domain = "test-ntlm-domain-b"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
      }
    ]
    nexus_repository_raw_group = [
      {
        name   = "test-name-a"
        online = true
        group = {
          member_names = ["test-member-name-a"]
        }
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
      },
      {
        name   = "test-name-b"
        online = true
        group = {
          member_names = ["test-member-name-b"]
        }
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
      }
    ]
    nexus_repository_raw_hosted = [
      {
        name   = "test-name-a"
        online = true
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
        component = {
          proprietary_components = true
        }
      },
      {
        name   = "test-name-b"
        online = true
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
        component = {
          proprietary_components = true
        }
      }
    ]
    nexus_repository_raw_proxy = [
      {
        name         = "test-name-a"
        online       = true
        routing_rule = "test-routing-rule-a"
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-a.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-a"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-a"
            password    = "test-password-a"
            ntlm_host   = "test-ntlm-host-a"
            ntlm_domain = "test-ntlm-domain-a"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
      },
      {
        name         = "test-name-b"
        online       = true
        routing_rule = "test-routing-rule-b"
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-b.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-b"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-b"
            password    = "test-password-b"
            ntlm_host   = "test-ntlm-host-b"
            ntlm_domain = "test-ntlm-domain-b"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
      }
    ]
    nexus_repository_rubygems_group = [
      {
        name   = "test-name-a"
        online = true
        group = {
          member_names = ["test-member-name-a"]
        }
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
      },
      {
        name   = "test-name-b"
        online = true
        group = {
          member_names = ["test-member-name-b"]
        }
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
      }
    ]
    nexus_repository_rubygems_hosted = [
      {
        name   = "test-name-a"
        online = true
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
        component = {
          proprietary_components = true
        }
      },
      {
        name   = "test-name-b"
        online = true
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
        component = {
          proprietary_components = true
        }
      }
    ]
    nexus_repository_rubygems_proxy = [
      {
        name         = "test-name-a"
        online       = true
        routing_rule = "test-routing-rule-a"
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-a.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-a"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-a"
            password    = "test-password-a"
            ntlm_host   = "test-ntlm-host-a"
            ntlm_domain = "test-ntlm-domain-a"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
      },
      {
        name         = "test-name-b"
        online       = true
        routing_rule = "test-routing-rule-b"
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-b.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-b"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-b"
            password    = "test-password-b"
            ntlm_host   = "test-ntlm-host-b"
            ntlm_domain = "test-ntlm-domain-b"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
      }
    ]
    nexus_repository_yum_group = [
      {
        name   = "test-name-a"
        online = true
        group = {
          member_names = ["test-member-name-a"]
        }
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        yum_signing = {
          keypair    = "test-keypair-a"
          passphrase = "test-passphrase-a"
        }
      },
      {
        name   = "test-name-b"
        online = true
        group = {
          member_names = ["test-member-name-b"]
        }
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        yum_signing = {
          keypair    = "test-keypair-b"
          passphrase = "test-passphrase-b"
        }
      }
    ]
    nexus_repository_yum_hosted = [
      {
        name           = "test-name-a"
        online         = true
        deploy_policy  = "STRICT"
        repodata_depth = 1
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
        component = {
          proprietary_components = true
        }
      },
      {
        name           = "test-name-b"
        online         = true
        deploy_policy  = "STRICT"
        repodata_depth = 1
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
        component = {
          proprietary_components = true
        }
      }
    ]
    nexus_repository_yum_proxy = [
      {
        name         = "test-name-a"
        online       = true
        routing_rule = "test-routing-rule-a"
        storage = {
          blob_store_name                = "test-blob-store-name-a"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-a.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-a"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-a"
            password    = "test-password-a"
            ntlm_host   = "test-ntlm-host-a"
            ntlm_domain = "test-ntlm-domain-a"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-a"]
        }
        yum_signing = {
          keypair    = "test-keypair-a"
          passphrase = "test-passphrase-a"
        }
      },
      {
        name         = "test-name-b"
        online       = true
        routing_rule = "test-routing-rule-b"
        storage = {
          blob_store_name                = "test-blob-store-name-b"
          strict_content_type_validation = true
        }
        proxy = {
          remote_url       = "https://remote-url-b.example.org"
          content_max_age  = 30
          metadata_max_age = 30
        }
        negative_cache = {
          enabled = true
          ttl     = 30
        }
        http_client = {
          blocked    = true
          auto_block = true
          connection = {
            retries                   = 3
            user_agent_suffix         = "test-user-agent-suffix-b"
            timeout                   = 30
            enable_circular_redirects = true
            enable_cookies            = true
            use_trust_store           = true
          }
          authentication = {
            type        = "username"
            username    = "test-username-b"
            password    = "test-password-b"
            ntlm_host   = "test-ntlm-host-b"
            ntlm_domain = "test-ntlm-domain-b"
          }
        }
        cleanup = {
          policy_names = ["test-policy-name-b"]
        }
        yum_signing = {
          keypair    = "test-keypair-b"
          passphrase = "test-passphrase-b"
        }
      }
    ]
  }

  assert {
    condition     = length(module.nexus_repository_apt_hosted) == 2
    error_message = "nexus_repository_apt_hosted must create one nexus-repository-apt-hosted per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_apt_hosted), k)])
    error_message = "nexus_repository_apt_hosted must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_apt_proxy) == 2
    error_message = "nexus_repository_apt_proxy must create one nexus-repository-apt-proxy per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_apt_proxy), k)])
    error_message = "nexus_repository_apt_proxy must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_bower_group) == 2
    error_message = "nexus_repository_bower_group must create one nexus-repository-bower-group per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_bower_group), k)])
    error_message = "nexus_repository_bower_group must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_bower_hosted) == 2
    error_message = "nexus_repository_bower_hosted must create one nexus-repository-bower-hosted per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_bower_hosted), k)])
    error_message = "nexus_repository_bower_hosted must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_bower_proxy) == 2
    error_message = "nexus_repository_bower_proxy must create one nexus-repository-bower-proxy per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_bower_proxy), k)])
    error_message = "nexus_repository_bower_proxy must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_cargo_group) == 2
    error_message = "nexus_repository_cargo_group must create one nexus-repository-cargo-group per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_cargo_group), k)])
    error_message = "nexus_repository_cargo_group must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_cargo_hosted) == 2
    error_message = "nexus_repository_cargo_hosted must create one nexus-repository-cargo-hosted per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_cargo_hosted), k)])
    error_message = "nexus_repository_cargo_hosted must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_cargo_proxy) == 2
    error_message = "nexus_repository_cargo_proxy must create one nexus-repository-cargo-proxy per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_cargo_proxy), k)])
    error_message = "nexus_repository_cargo_proxy must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_cocoapods_proxy) == 2
    error_message = "nexus_repository_cocoapods_proxy must create one nexus-repository-cocoapods-proxy per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_cocoapods_proxy), k)])
    error_message = "nexus_repository_cocoapods_proxy must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_conan_proxy) == 2
    error_message = "nexus_repository_conan_proxy must create one nexus-repository-conan-proxy per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_conan_proxy), k)])
    error_message = "nexus_repository_conan_proxy must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_conda_proxy) == 2
    error_message = "nexus_repository_conda_proxy must create one nexus-repository-conda-proxy per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_conda_proxy), k)])
    error_message = "nexus_repository_conda_proxy must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_docker_group) == 2
    error_message = "nexus_repository_docker_group must create one nexus-repository-docker-group per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_docker_group), k)])
    error_message = "nexus_repository_docker_group must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_docker_hosted) == 2
    error_message = "nexus_repository_docker_hosted must create one nexus-repository-docker-hosted per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_docker_hosted), k)])
    error_message = "nexus_repository_docker_hosted must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_docker_proxy) == 2
    error_message = "nexus_repository_docker_proxy must create one nexus-repository-docker-proxy per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_docker_proxy), k)])
    error_message = "nexus_repository_docker_proxy must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_gitlfs_hosted) == 2
    error_message = "nexus_repository_gitlfs_hosted must create one nexus-repository-gitlfs-hosted per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_gitlfs_hosted), k)])
    error_message = "nexus_repository_gitlfs_hosted must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_go_group) == 2
    error_message = "nexus_repository_go_group must create one nexus-repository-go-group per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_go_group), k)])
    error_message = "nexus_repository_go_group must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_go_proxy) == 2
    error_message = "nexus_repository_go_proxy must create one nexus-repository-go-proxy per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_go_proxy), k)])
    error_message = "nexus_repository_go_proxy must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_helm_hosted) == 2
    error_message = "nexus_repository_helm_hosted must create one nexus-repository-helm-hosted per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_helm_hosted), k)])
    error_message = "nexus_repository_helm_hosted must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_helm_proxy) == 2
    error_message = "nexus_repository_helm_proxy must create one nexus-repository-helm-proxy per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_helm_proxy), k)])
    error_message = "nexus_repository_helm_proxy must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_maven_group) == 2
    error_message = "nexus_repository_maven_group must create one nexus-repository-maven-group per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_maven_group), k)])
    error_message = "nexus_repository_maven_group must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_maven_hosted) == 2
    error_message = "nexus_repository_maven_hosted must create one nexus-repository-maven-hosted per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_maven_hosted), k)])
    error_message = "nexus_repository_maven_hosted must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_maven_proxy) == 2
    error_message = "nexus_repository_maven_proxy must create one nexus-repository-maven-proxy per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_maven_proxy), k)])
    error_message = "nexus_repository_maven_proxy must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_npm_group) == 2
    error_message = "nexus_repository_npm_group must create one nexus-repository-npm-group per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_npm_group), k)])
    error_message = "nexus_repository_npm_group must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_npm_hosted) == 2
    error_message = "nexus_repository_npm_hosted must create one nexus-repository-npm-hosted per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_npm_hosted), k)])
    error_message = "nexus_repository_npm_hosted must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_npm_proxy) == 2
    error_message = "nexus_repository_npm_proxy must create one nexus-repository-npm-proxy per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_npm_proxy), k)])
    error_message = "nexus_repository_npm_proxy must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_nuget_group) == 2
    error_message = "nexus_repository_nuget_group must create one nexus-repository-nuget-group per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_nuget_group), k)])
    error_message = "nexus_repository_nuget_group must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_nuget_hosted) == 2
    error_message = "nexus_repository_nuget_hosted must create one nexus-repository-nuget-hosted per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_nuget_hosted), k)])
    error_message = "nexus_repository_nuget_hosted must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_nuget_proxy) == 2
    error_message = "nexus_repository_nuget_proxy must create one nexus-repository-nuget-proxy per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_nuget_proxy), k)])
    error_message = "nexus_repository_nuget_proxy must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_p2_proxy) == 2
    error_message = "nexus_repository_p2_proxy must create one nexus-repository-p2-proxy per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_p2_proxy), k)])
    error_message = "nexus_repository_p2_proxy must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_pypi_group) == 2
    error_message = "nexus_repository_pypi_group must create one nexus-repository-pypi-group per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_pypi_group), k)])
    error_message = "nexus_repository_pypi_group must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_pypi_hosted) == 2
    error_message = "nexus_repository_pypi_hosted must create one nexus-repository-pypi-hosted per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_pypi_hosted), k)])
    error_message = "nexus_repository_pypi_hosted must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_pypi_proxy) == 2
    error_message = "nexus_repository_pypi_proxy must create one nexus-repository-pypi-proxy per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_pypi_proxy), k)])
    error_message = "nexus_repository_pypi_proxy must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_r_group) == 2
    error_message = "nexus_repository_r_group must create one nexus-repository-r-group per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_r_group), k)])
    error_message = "nexus_repository_r_group must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_r_hosted) == 2
    error_message = "nexus_repository_r_hosted must create one nexus-repository-r-hosted per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_r_hosted), k)])
    error_message = "nexus_repository_r_hosted must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_r_proxy) == 2
    error_message = "nexus_repository_r_proxy must create one nexus-repository-r-proxy per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_r_proxy), k)])
    error_message = "nexus_repository_r_proxy must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_raw_group) == 2
    error_message = "nexus_repository_raw_group must create one nexus-repository-raw-group per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_raw_group), k)])
    error_message = "nexus_repository_raw_group must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_raw_hosted) == 2
    error_message = "nexus_repository_raw_hosted must create one nexus-repository-raw-hosted per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_raw_hosted), k)])
    error_message = "nexus_repository_raw_hosted must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_raw_proxy) == 2
    error_message = "nexus_repository_raw_proxy must create one nexus-repository-raw-proxy per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_raw_proxy), k)])
    error_message = "nexus_repository_raw_proxy must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_rubygems_group) == 2
    error_message = "nexus_repository_rubygems_group must create one nexus-repository-rubygems-group per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_rubygems_group), k)])
    error_message = "nexus_repository_rubygems_group must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_rubygems_hosted) == 2
    error_message = "nexus_repository_rubygems_hosted must create one nexus-repository-rubygems-hosted per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_rubygems_hosted), k)])
    error_message = "nexus_repository_rubygems_hosted must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_rubygems_proxy) == 2
    error_message = "nexus_repository_rubygems_proxy must create one nexus-repository-rubygems-proxy per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_rubygems_proxy), k)])
    error_message = "nexus_repository_rubygems_proxy must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_yum_group) == 2
    error_message = "nexus_repository_yum_group must create one nexus-repository-yum-group per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_yum_group), k)])
    error_message = "nexus_repository_yum_group must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_yum_hosted) == 2
    error_message = "nexus_repository_yum_hosted must create one nexus-repository-yum-hosted per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_yum_hosted), k)])
    error_message = "nexus_repository_yum_hosted must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_repository_yum_proxy) == 2
    error_message = "nexus_repository_yum_proxy must create one nexus-repository-yum-proxy per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_repository_yum_proxy), k)])
    error_message = "nexus_repository_yum_proxy must be keyed by name"
  }

}

run "creates_nothing_by_default" {
  command = plan

  assert {
    condition     = length(module.nexus_repository_apt_hosted) == 0
    error_message = "nexus_repository_apt_hosted must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_apt_proxy) == 0
    error_message = "nexus_repository_apt_proxy must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_bower_group) == 0
    error_message = "nexus_repository_bower_group must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_bower_hosted) == 0
    error_message = "nexus_repository_bower_hosted must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_bower_proxy) == 0
    error_message = "nexus_repository_bower_proxy must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_cargo_group) == 0
    error_message = "nexus_repository_cargo_group must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_cargo_hosted) == 0
    error_message = "nexus_repository_cargo_hosted must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_cargo_proxy) == 0
    error_message = "nexus_repository_cargo_proxy must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_cocoapods_proxy) == 0
    error_message = "nexus_repository_cocoapods_proxy must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_conan_proxy) == 0
    error_message = "nexus_repository_conan_proxy must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_conda_proxy) == 0
    error_message = "nexus_repository_conda_proxy must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_docker_group) == 0
    error_message = "nexus_repository_docker_group must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_docker_hosted) == 0
    error_message = "nexus_repository_docker_hosted must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_docker_proxy) == 0
    error_message = "nexus_repository_docker_proxy must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_gitlfs_hosted) == 0
    error_message = "nexus_repository_gitlfs_hosted must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_go_group) == 0
    error_message = "nexus_repository_go_group must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_go_proxy) == 0
    error_message = "nexus_repository_go_proxy must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_helm_hosted) == 0
    error_message = "nexus_repository_helm_hosted must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_helm_proxy) == 0
    error_message = "nexus_repository_helm_proxy must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_maven_group) == 0
    error_message = "nexus_repository_maven_group must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_maven_hosted) == 0
    error_message = "nexus_repository_maven_hosted must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_maven_proxy) == 0
    error_message = "nexus_repository_maven_proxy must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_npm_group) == 0
    error_message = "nexus_repository_npm_group must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_npm_hosted) == 0
    error_message = "nexus_repository_npm_hosted must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_npm_proxy) == 0
    error_message = "nexus_repository_npm_proxy must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_nuget_group) == 0
    error_message = "nexus_repository_nuget_group must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_nuget_hosted) == 0
    error_message = "nexus_repository_nuget_hosted must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_nuget_proxy) == 0
    error_message = "nexus_repository_nuget_proxy must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_p2_proxy) == 0
    error_message = "nexus_repository_p2_proxy must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_pypi_group) == 0
    error_message = "nexus_repository_pypi_group must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_pypi_hosted) == 0
    error_message = "nexus_repository_pypi_hosted must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_pypi_proxy) == 0
    error_message = "nexus_repository_pypi_proxy must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_r_group) == 0
    error_message = "nexus_repository_r_group must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_r_hosted) == 0
    error_message = "nexus_repository_r_hosted must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_r_proxy) == 0
    error_message = "nexus_repository_r_proxy must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_raw_group) == 0
    error_message = "nexus_repository_raw_group must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_raw_hosted) == 0
    error_message = "nexus_repository_raw_hosted must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_raw_proxy) == 0
    error_message = "nexus_repository_raw_proxy must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_rubygems_group) == 0
    error_message = "nexus_repository_rubygems_group must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_rubygems_hosted) == 0
    error_message = "nexus_repository_rubygems_hosted must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_rubygems_proxy) == 0
    error_message = "nexus_repository_rubygems_proxy must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_yum_group) == 0
    error_message = "nexus_repository_yum_group must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_yum_hosted) == 0
    error_message = "nexus_repository_yum_hosted must be empty by default"
  }

  assert {
    condition     = length(module.nexus_repository_yum_proxy) == 0
    error_message = "nexus_repository_yum_proxy must be empty by default"
  }

}
