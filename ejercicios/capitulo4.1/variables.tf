# datos del grupo de recursos
variable "resource_group_name" {
  type        = string
  description = "El grupo de recursos."
}

variable "location" {
  type        = string
  description = "La ubicación de los recursos"
}

# datos de la red virtual
variable "vpn_name" {
  type        = string
  description = "Nombre de tu VPN"
}

# datos del grupo de seguridad
variable "nsg_name" {
  type        = string
  description = "Nombre del grupo de seguridad de la red"
}

# datos de la subred
variable "subnet_name" {
  type        = string
  description = "Nombre de la subnet"
}

variable "allocation_method" {
  type        = string
  description = "Método de asignación"
  default     = "Dynamic"
}

#datos de acceso para la máquina virtual
variable "admin_username" {
  type        = string
  description = "Nombre del usuario"
}

variable "admin_password" {
  type        = string
  description = "Contraseña de acceso"
}