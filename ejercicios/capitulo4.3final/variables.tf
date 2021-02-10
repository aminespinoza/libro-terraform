variable "rg_name" {
  type        = string
  description = "Nombre del grupo de recursos"
}

variable "rg_location" {
  type        = string
  description = "Ubicación del grupo de recursos"
}

variable "storage_account_name" {
  type        = string
  description = "Nombre de la cuenta de almacenamiento"
}

variable "app_service_name" {
  type        = string
  description = "Nombre del App Service Plan"
}

variable "function_name" {
  type        = string
  description = "Function App Name"
}