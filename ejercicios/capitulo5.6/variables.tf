variable "customer" {
  type    = string
  default = "Red-Bull"
}

variable project_name {
  description = "Name of the project."
  type        = string
  default     = "my-project"
}

variable environment {
  description = "Name of the environment."
  type        = string
  default     = "prod"
}