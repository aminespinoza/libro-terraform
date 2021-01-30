resource "azurerm_virtual_machine" "myterraformvm" {
  name                  = "myVMUbuntu"
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [var.interface_id]
  vm_size               = "Standard_DS1_v2"

  storage_os_disk {
    name              = "myOsDiskUbuntu"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Premium_LRS"
  }

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04.0-LTS"
    version   = "latest"
  }

  os_profile {
    computer_name  = "myvmUbuntu"
    admin_username = var.admin_username
    admin_password = var.admin_password
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  boot_diagnostics {
    enabled     = "true"
    storage_uri = var.storage_diagnostics
  }

  tags = {
    environment = "developer"
  }
}