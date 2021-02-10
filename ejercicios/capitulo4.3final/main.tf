resource "azurerm_resource_group" "resource_group" {
  name     = var.rg_name
  location = var.rg_location
}

module "azure_function" {
  source                    = "./modules/function"
  rg_name                   = azurerm_resource_group.resource_group.name
  rg_location               = azurerm_resource_group.resource_group.location
  storage_account_name      = var.storage_account_name
  app_service_name          = var.app_service_name
  function_name             = var.function_name
  storage_account_tier      = "Premium"
  storage_replication_type  = "LRS"
  app_service_plan_sku_tier = "Basic"
  app_service_plan_sku_size = "B2"
}