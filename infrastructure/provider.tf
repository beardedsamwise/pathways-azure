terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "tfstatebearded"
    container_name       = "tfstate"
    key                  = "weatherapp.tfstate"
  }
}

provider "azurerm" {
  features {}
}
