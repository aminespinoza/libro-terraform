variable "resource_group_name" {
  type        = string
  description = "El grupo de recursos."
}

variable "subnet_name" {
  type        = string
  description = "Nombre de la subnet"
}

variable "vpn_name" {
  type        = string
  description = "Nombre de tu VPN"
}

variable "nsg_id" {
  type        = string
  description = "Identificador del grupo de seguridad"
}