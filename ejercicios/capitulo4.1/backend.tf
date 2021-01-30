terraform {
  backend "azurerm" {
    storage_account_name = "statestorageamin"
    container_name       = "terraformstate"
    key                  = "terraform.tfstate"
    access_key           = "p9/oo7t/if2GBrh66YBfLd3E40Inltw+qphazgH0Yx3Wup8CaMYQxbjpb0cMpHocR6d6AOs98oBKuGnwsA04tQ=="
  }
}