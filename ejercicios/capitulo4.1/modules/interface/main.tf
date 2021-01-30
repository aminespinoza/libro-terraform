resource "azurerm_network_interface" "myterraformnic" {
  name                = "myNICvNet"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "myNicConfiguration"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "dynamic"
    public_ip_address_id          = var.public_ip_id
  }

  tags = {
    environment = "Terraform Demo"
  }
}