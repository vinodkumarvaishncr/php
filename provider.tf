terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.47.0"
    }
  }

  backend "azurerm" {
      resource_group_name  = "vinod_main_rg"
      storage_account_name = "vinodstoragemain"
      container_name       = "container22"
      key                  = "vinodkey.tfstate"
  }
   
}

provider "azurerm" {
  features {}
  subscription_id = "95a90f4b-7e15-47ba-95ab-0d52bac078e4"
}
