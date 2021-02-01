provider "azurerm" {
}

resource "azurerm_resource_group" "rg" {
  name     = "test-rg"
  location = "Central US"
}

module "app-insights" {
  source  = "dfar-io/app-insights/azurerm"
  version = "1.2.1"
  name = "my-application-insights"
  location = azurerm_resource_group.rg.location
  rg_name = azurerm_resource_group.rg.name
  web_tests = {
    ui-uptime = <<EOF
    https://my-web-site.com/status
    EOF
    api-uptime = <<EOF
    https://my-web-site.com/api/status
    EOF
  }
}