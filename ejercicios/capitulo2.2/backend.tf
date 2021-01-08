terraform {
  backend "azurerm" {
    storage_account_name = "statestorageamin"
    container_name       = "terraformstate"
    key                  = "terraform.tfstate"
    access_key           = "jZgKi/p89IKoawx89QAnxoH8YivuCp+6h1FGwv7DgDMczwHyUC99zVWZleO7Wzz996aiCSt4rnuzGd/N9E7ROw=="
  }
}
