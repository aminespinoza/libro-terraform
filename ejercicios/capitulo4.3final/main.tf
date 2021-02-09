resource "azurerm_resource_group" "resource_group" {
  name     = var.rg_name
  location = var.rg_location
}

module "azure_function" {
  source               = "./modules/function"
  rg_name              = azurerm_resource_group.resource_group.name
  location             = azurerm_resource_group.resource_group.location
  storage_account_name = storage_account_name
  app_service_name     = app_service_name
  function_name        = function_name
}