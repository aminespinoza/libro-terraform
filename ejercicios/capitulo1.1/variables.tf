variable "group_name" {
  type        = string
  description = "El nombre esperado de tu grupo de recursos"
}

variable "group_location" {
  type        = string
  description = "Que región hospedará a tus recursos, por defecto será 'westus'"
}

variable "storage_account_name" {
  type        = string
  description = "El nombre de tu cuenta de almacenamiento"
}

variable "containers" {
  type        = list(any)
  description = "Nombres esperados para los blob containers"
  default     = ["storagelogs", "receivedfiles", "movements", "events"]
}

variable "network_name" {
  type        = string
  description = "El nombre de la red virtual"
}

variable "subnet_name" {
  type        = string
  description = "Nombre de la subred virtual"
}