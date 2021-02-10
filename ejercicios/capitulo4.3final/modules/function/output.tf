output "app_function_name" {
  value = azurerm_function_app.azure_function.name
}

output "storage_account_name" {
  value = azurerm_storage_account.storage.name
}

output "app_service_plan_name" {
  value = azurerm_app_service_plan.service_plan.name
}