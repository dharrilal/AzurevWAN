#Providers
terraform {
  required_providers {
    azurerm = {
      # Specify what version of the provider we are going to utilise
      source  = "hashicorp/azurerm"
      version = ">= 3.41.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.4.3"
    }
  }
}
#Features
provider "azurerm" {
  features {}
}
provider "azurerm" {
  alias           = "hub-sub"
  client_id       = "bec8538f-c245-4e2b-8f83-e2e372915ee9"
  client_secret   = "Cub8Q~YCd4UJvz~CcAR73NBhuwbU8O0oS58k.bzQ"
  tenant_id       = "c2129b89-e528-4ed6-93dc-8ec4b9b7304f"
  subscription_id = var.subscription_id_hub
  features {}
}
provider "azurerm" {
  alias           = "spoke-sub"
  client_id       = "37f800a4-5385-4531-9adb-ed933cbd92a1"
  client_secret   = "iWn8Q~4UlUKwvReOYi-gdYHdT4pSyfB7Lieflb8E"
  tenant_id       = "c2129b89-e528-4ed6-93dc-8ec4b9b7304f"
  subscription_id = var.subscription_id_spoke
  features {}
}