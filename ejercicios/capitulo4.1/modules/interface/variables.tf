variable "resource_group_name" {
  type        = string
  description = "El grupo de recursos."
}

variable "location" {
  type        = string
  description = "La ubicación de los recursos"
}

variable "subnet_id" {
  type        = string
  description = "Identificador de la subred"
}

variable "public_ip_id" {
  type        = string
  description = "Identificador de la ip"
}