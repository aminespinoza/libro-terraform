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

variable "storage_account_tier" {
  type        = string
  description = "Nivel de la cuenta de almacenamiento"
  default     = "Standard"
}

variable "storage_replication_type" {
  type        = string
  description = "Tipo de replicación de la cuenta de almacenamiento"
  default     = "LRS"
}

variable "app_service_name" {
  type        = string
  description = "Nombre del App Service Plan"
}

variable "app_service_plan_sku_tier" {
  type        = string
  description = "Nivel del sku del App Service Plan"
  default     = "Standard"
}

variable "app_service_plan_sku_size" {
  type        = string
  description = "Tamaño del sku del App Service Plan"
  default     = "S1"
}

variable "function_name" {
  type        = string
  description = "Function App Name"
}