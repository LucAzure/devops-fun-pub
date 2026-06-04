variable "resource_group_name" {
  type        = string
  description = "Name of the resource group where networking resources will be created."
}

variable "azure_location" {
  type        = string
  description = "Azure region where networking resources will be created."
}

variable "network_name_prefix" {
  type        = string
  description = "Prefix used for naming network resources."
  default     = "aks"
}

variable "virtual_network_address_space" {
  type        = list(string)
  description = "Address space assigned to the AKS virtual network."
  default     = ["10.10.0.0/16"]
}

variable "aks_node_subnet_address_prefixes" {
  type        = list(string)
  description = "Address prefixes assigned to the AKS node subnet."
  default     = ["10.10.1.0/24"]
}

variable "resource_tags" {
  type        = map(string)
  description = "Tags applied to network resources."
  default     = {}
}
