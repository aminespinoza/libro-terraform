variable "group_name" {
  type        = string
  description = "El nombre esperado de tu grupo de recursos"
  default     = "stateResourceGroup"
}

variable "group_location" {
  type        = string
  description = "Que región hospedará a tus recursos, por defecto será 'westus'"
  default     = "westus"
}

variable "storage_account_name" {
  type        = string
  description = "El nombre de tu cuenta de almacenamiento"
  default     = "statestorageamin"
}