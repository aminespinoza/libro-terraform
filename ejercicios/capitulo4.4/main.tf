provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "resource_group" {
  name     = "azure-functions-test-rg"
  location = "eastus"
}

module "azure_function" {
  source                    = "aminespinoza/azurefunctions/azurerm"
  rg_name                   = azurerm_resource_group.resource_group.name
  rg_location               = azurerm_resource_group.resource_group.location
  storage_account_name      = "functionsappteststorage"
  app_service_name          = "azure-functions-test-service-plan"
  function_name             = "libro-azure-functions"
  storage_account_tier      = "Premium"
  storage_replication_type  = "LRS"
  app_service_plan_sku_tier = "Basic"
  app_service_plan_sku_size = "B2"
}