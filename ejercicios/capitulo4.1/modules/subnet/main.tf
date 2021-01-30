resource "azurerm_subnet" "myterraformsubnet" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vpn_name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_subnet_network_security_group_association" "mynsgassociation" {
  subnet_id                 = azurerm_subnet.myterraformsubnet.id
  network_security_group_id = var.nsg_id
}