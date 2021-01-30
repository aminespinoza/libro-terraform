variable "resource_group_name" {
  type        = string
  description = "El grupo de recursos."
}

variable "location" {
  type        = string
  description = "La ubicación de los recursos"
}

variable "interface_id" {
  type        = string
  description = "Identificador de la interfaz"
}

variable "admin_username" {
  type        = string
  description = "Nombre del usuario"
}

variable "admin_password" {
  type        = string
  description = "Contraseña de acceso"
}

variable "storage_diagnostics" {
  type        = string
  description = "Donde se almacenarán los valores"
}