output "vnet_id" {
	description = "ID of the AKS virtual network."
	value       = azurerm_virtual_network.aks.id
}

output "vnet_name" {
	description = "Name of the AKS virtual network."
	value       = azurerm_virtual_network.aks.name
}

output "aks_subnet_id" {
	description = "ID of the AKS node subnet."
	value       = azurerm_subnet.aks_nodes.id
}

output "aks_subnet_name" {
	description = "Name of the AKS node subnet."
	value       = azurerm_subnet.aks_nodes.name
}
