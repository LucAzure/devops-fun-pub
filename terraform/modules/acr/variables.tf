variable "resource_group_name" {
  type        = string
  description = "Name of the resource group where the ACR is deployed."
}

variable "location" {
  type        = string
  description = "Azure region where the ACR is deployed."
}

variable "acr_name" {
  type        = string
  description = "Globally unique ACR name (alphanumeric, 5–50 chars)."
}

variable "resource_tags" {
  type        = map(string)
  description = "Common tags applied to created resources."
  default     = {}
}

variable "aks_kubelet_identity_object_id" {
  type        = string
  description = "Object ID of the AKS kubelet managed identity – used to grant AcrPull."
}

variable "github_actions_principal_id" {
  type        = string
  description = "Object ID of the GitHub Actions service principal – used to grant AcrPush. Leave null to skip."
  default     = null
}
