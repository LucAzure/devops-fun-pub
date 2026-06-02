variable "name" {
  type        = string
  description = "Name of the resource group."
}

variable "location" {
  type        = string
  description = "Azure region where the resource group will be created."
}

variable "resource_tags" {
  type        = map(string)
  description = "Common tags applied to created resources."
  default     = {}
}

variable "network_virtual_network_address_space" {
  type        = list(string)
  description = "Address space for the AKS virtual network."
  default     = ["10.10.0.0/16"]
}

variable "network_aks_node_subnet_address_prefixes" {
  type        = list(string)
  description = "Address prefixes for the AKS node subnet."
  default     = ["10.10.1.0/24"]
}

variable "aks_cluster_name" {
  type        = string
  description = "Optional explicit AKS cluster name. If null, a name is derived from var.name."
  default     = null
}

variable "aks_dns_prefix" {
  type        = string
  description = "Optional explicit AKS DNS prefix. If null, a value is derived from var.name."
  default     = null
}

variable "aks_kubernetes_version" {
  type        = string
  description = "Optional AKS Kubernetes version. If null, Azure selects the default supported version."
  default     = null
}

variable "aks_system_node_pool_name" {
  type        = string
  description = "Name of the AKS default system node pool."
  default     = "system"
}

variable "aks_system_node_count" {
  type        = number
  description = "Initial node count for the AKS default system node pool."
  default     = 2
}

variable "aks_system_node_vm_size" {
  type        = string
  description = "VM size for AKS default system nodes."
  default     = "Standard_D2s_v5"
}