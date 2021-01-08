provider "azurerm" {
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

output "groupName" {
  value = azurerm_resource_group.rg.name
}

output "strogareAccountId" {
  value = azurerm_storage_account.storage_account.id
  sensitive = true
}

