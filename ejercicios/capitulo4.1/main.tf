module "resource_group" {
  source              = "./modules/rg"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "virtual_network" {
  source              = "./modules/vpn"
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
  vpn_name            = var.vpn_name
}

module "network_security_group" {
  source              = "./modules/nsg"
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
  nsg_name            = var.nsg_name
}

module "subnet" {
  source              = "./modules/subnet"
  resource_group_name = module.resource_group.resource_group_name
  subnet_name         = var.subnet_name
  vpn_name            = module.virtual_network.name
  nsg_id              = module.network_security_group.nsg_id
}

module "storage" {
  source              = "./modules/storage"
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
}

module "public_ip" {
  source              = "./modules/ip"
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
  allocation_method   = var.allocation_method
}

module "vm_interface" {
  source              = "./modules/interface"
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
  subnet_id           = module.subnet.id
  public_ip_id        = module.public_ip.id
}

module "vm" {
  source              = "./modules/vm"
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
  interface_id        = module.vm_interface.id
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  storage_diagnostics = module.storage.primary_blob_endpoint
}