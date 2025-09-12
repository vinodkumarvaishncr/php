terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "vinod-main-rg"
    storage_account_name = "storagemainvinod"
    container_name       = "vinodcontainer"
    key                  = "infra-dev-key.tfstate"
  }
   
}

provider "azurerm" {
  features {}
  subscription_id = "98b7163f-e961-4b65-98c2-7a6dc2edf5b7"
}