resource "azurerm_virtual_network" "myterraformnetwork" {
  name                = var.vpn_name
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = {
    environment = "developer"
  }
}

