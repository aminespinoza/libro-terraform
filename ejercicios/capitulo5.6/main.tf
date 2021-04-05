provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "${local.name_prefix}grupoCiclos"
  location = "eastus"
  tags = local.tags
}

resource "azurerm_public_ip" "public_ips" {
  count               = 4
  name                = "${local.name_prefix}acceptanceTestPublicIp${count.index}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Static"
  tags = local.tags
}