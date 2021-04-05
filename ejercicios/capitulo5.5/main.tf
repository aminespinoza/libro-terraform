provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "grupoCiclos"
  location = "eastus"
}

resource "azurerm_public_ip" "public_ips" {
  count = 4
  name                = "acceptanceTestPublicIp${count.index}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Static"
}