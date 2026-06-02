resource "azurerm_resource_group" "first_rg" {
  name     = var.name 
  location = var.location
}