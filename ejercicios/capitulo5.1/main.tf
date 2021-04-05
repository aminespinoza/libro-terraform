provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "resource_group" {
  name     = "devResourceGroup"
  location = "eastus"
  tags = {
    "Environment" = "dev"
  }
}