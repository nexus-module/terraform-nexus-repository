################################################################################
# Repository Npm Group
################################################################################
terraform {
  required_version = ">= 1.3.0"
  required_providers {
    nexus = {
      source  = "datadrivers/nexus"
      version = ">= 3.0.0"
    }
  }
}
