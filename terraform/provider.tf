terraform {
  required_version = ">= 1.8"

  backend "azurerm" {
    resource_group_name  = "backenddevopsfun"
    storage_account_name = "devopsfunstac"
    container_name       = "devopsfuntfstatecontainer"
    key                  = "devopsfunstate.tfstate"
  }

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}
}