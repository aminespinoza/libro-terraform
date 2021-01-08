provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.group_name
  location = var.group_location
}

resource "azurerm_container_registry" "acr" {
  name                = "acrlibroterraform"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Standard"
  admin_enabled       = true
}