terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.90.0"
    }
  }
  /*
  backend "azurerm" {
  resource_group_name = "rg-ea2-sre-shared"
  storage_account_name = "saea2srecloudshell"
  container_name = "sre-container"
  key = "terraform.tfstate"

  }*/
}
# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

}