variable "resource_group_name" {
  type        = string
  description = "Name of the resource group where the AKS cluster will be created."
}

variable "azure_location" {
  type        = string
  description = "Azure region for the AKS cluster."
}

variable "aks_cluster_name" {
  type        = string
  description = "Name of the AKS cluster."
}

variable "dns_prefix" {
  type        = string
  description = "DNS prefix used by the AKS API server endpoint."
}

variable "aks_subnet_id" {
  type        = string
  description = "Subnet ID used by AKS nodes."
}

variable "kubernetes_version" {
  type        = string
  description = "Optional AKS Kubernetes version. Set null to use Azure default."
  default     = null
}

variable "system_node_pool_name" {
  type        = string
  description = "Name of the default AKS system node pool."
  default     = "system"
}

variable "system_node_count" {
  type        = number
  description = "Initial number of nodes in the default system node pool."
  default     = 1
}

variable "system_node_vm_size" {
  type        = string
  description = "VM size for nodes in the default system node pool."
  default     = "Standard_D2_v3"
}

variable "resource_tags" {
  type        = map(string)
  description = "Tags applied to AKS resources."
  default     = {}
}
