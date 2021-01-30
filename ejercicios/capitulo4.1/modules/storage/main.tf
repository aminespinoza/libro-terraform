resource "random_string" "storageaccount-name" {
  length  = 16
  special = false
  upper   = false
}

resource "azurerm_storage_account" "mystorageaccount" {
  name                     = random_string.storageaccount-name.result
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "developer"
  }
}