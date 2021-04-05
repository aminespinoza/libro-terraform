locals {
  name_prefix = "demo-${var.customer}-"

  required_tags = {
    project     = var.project_name,
    environment = var.environment
  }
  tags = local.required_tags
}