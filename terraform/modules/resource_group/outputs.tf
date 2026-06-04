output "id" {
  description = "ID of the created resource group."
  value       = azurerm_resource_group.first_rg.id
}

output "name" {
  description = "Name of the created resource group."
  value       = azurerm_resource_group.first_rg.name
}
