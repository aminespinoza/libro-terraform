variable "resource_group_name" {
  type        = string
  description = "El grupo de recursos."
}

variable "location" {
  type        = string
  description = "La ubicación de los recursos"
}

variable "nsg_name" {
  type        = string
  description = "Nombre del grupo de seguridad de la red"
}