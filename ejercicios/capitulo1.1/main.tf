provider "azurerm" {
  version = "2.30.0"
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.group_name
  location = var.group_location
}

resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_container" "container" {
  for_each              = toset(var.containers)
  name                  = each.value
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private"
}

resource "azurerm_virtual_network" "network" {
  name          = var.network_name
  address_space = ["10.1.2.0/24"]
  location      = azurerm_resource_group.rg.location

  subnet {
    name           = var.subnet_name
    address_prefix = "10.1.2.0/25"
  }
}


