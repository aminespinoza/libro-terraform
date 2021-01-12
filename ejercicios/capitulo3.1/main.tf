resource "random_string" "rg-name" {
  length = 16
  special = true
  override_special = "/@£$"
}

resource "azurerm_resource_group" "resourcegroup" {
  name = random_string.rg-name.result
  location = "westus"
}

resource "random_password" "password" {
  length = 16
  special = false
  override_special = "_%@"
}

output "groupName" {
    value = random_string.rg-name.result
}

output "passwordName" {
  value = random_password.password.result
}