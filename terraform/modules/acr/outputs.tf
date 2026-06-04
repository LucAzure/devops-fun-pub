output "acr_id" {
  description = "Resource ID of the ACR."
  value       = azurerm_container_registry.acr.id
}

output "acr_login_server" {
  description = "Login server hostname (e.g. myacr.azurecr.io)."
  value       = azurerm_container_registry.acr.login_server
}

output "acr_name" {
  description = "Name of the ACR."
  value       = azurerm_container_registry.acr.name
}
