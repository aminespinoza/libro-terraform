output "app_function_name" {
  value = azurerm_function_app.azure_function.name
}

output "storage_account_name" {
  value = azurerm_storage_account.storage.name
}

output "app_service_plan_name" {
  value = azurerm_app_service_plan.service_plan.name
}

output "storage_account_primary_access_key" {
  value       = azurerm_storage_account.storage.primary_access_key
}

output "storage_account_primary_connection_string" {
  value       = azurerm_storage_account.storage.primary_connection_string
}

output "possible_outbound_ip_addresses" {
  value       = azurerm_function_app.azure_function.possible_outbound_ip_addresses
}

output "default_hostname" {
  value       = azurerm_function_app.azure_function.default_hostname
}

output "id" {
  value       = azurerm_function_app.azure_function.id
}

output "app_service_plan_id" {
  value       = azurerm_app_service_plan.service_plan.id
}