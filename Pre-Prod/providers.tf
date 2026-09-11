terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.4.0"
    }
  }

  backend "azurerm" {
    resource_group_name = "momos"
    storage_account_name = "oaksoakstg"
    container_name = "oaksoakcont"
    key = "pre-prod.tfstate"
  }
}

provider "azurerm" {
  features {

  }
}