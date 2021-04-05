provider "azurerm" {
  features {}
}
 
resource "azurerm_resource_group" "rg" {
  name     = "testingKeyVaultGroup"
  location = "eastus"
}

data "azurerm_key_vault_secret" "locationSecret" {
  name         = "location"
  key_vault_id = var.keyVaultSecretValue
}
 
output "A_little_secret" {
  value = data.azurerm_key_vault_secret.locationSecret.value
}