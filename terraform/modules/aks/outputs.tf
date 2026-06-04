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

output "kubelet_identity_object_id" {
  description = "Object ID of the AKS kubelet managed identity (used for ACR pull)."
  value       = azurerm_kubernetes_cluster.demo_cluster.kubelet_identity[0].object_id
}
