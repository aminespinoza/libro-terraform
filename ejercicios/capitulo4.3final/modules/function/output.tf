output "function_name" {
  value = azurerm_function_app.azure_function.name
}

output "storage_name" {
  value = azurerm_storage_account.storage.name
}

output "app_service_plan" {
  value = azurerm_app_service_plan.service_plan.name
}