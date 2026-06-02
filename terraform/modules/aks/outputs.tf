output "cluster_id" {
	description = "ID of the AKS cluster."
	value       = azurerm_kubernetes_cluster.demo_cluster.id
}

output "cluster_name" {
	description = "Name of the AKS cluster."
	value       = azurerm_kubernetes_cluster.demo_cluster.name
}

output "kube_config_host" {
	description = "Kubernetes API server host endpoint."
	value       = azurerm_kubernetes_cluster.demo_cluster.kube_config[0].host
}
