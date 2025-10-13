terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.47.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "vinod_main_rg"
    storage_account_name = "vinodstorgeforstatefile"
    container_name       = "vinodcontainerforstatefile"
    key                  = "manual.terraform.tfstate"
  }
   
}

provider "azurerm" {
  features {}
  subscription_id = "239a3096-3fb0-4f7c-8060-6127b0f8808e"
}
