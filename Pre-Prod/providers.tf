terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.4.0"
    }
  }

  backend "azurerm" {
    resource_group_name = "rg-chulbule"
    storage_account_name = "chulbulestg"
    container_name = "tfstate"
    key = "pre-prod.tfstate"
  }
}

provider "azurerm" {
  features {

  }
}
