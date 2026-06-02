module "rg" {
  source = "./modules/resource_group"
  name     = var.name
  location = var.location
}

module "network" {
  source = "./modules/network"
  resource_group_name = module.rg.name
  azure_location      = var.location
  network_name_prefix = var.name
  virtual_network_address_space       = var.network_virtual_network_address_space
  aks_node_subnet_address_prefixes    = var.network_aks_node_subnet_address_prefixes
  resource_tags                       = var.resource_tags
}

module "acr" {
  source = "./modules/acr"
}

module "aks" {
  source = "./modules/aks"
  resource_group_name = module.rg.name
  azure_location      = var.location
  aks_cluster_name    = var.aks_cluster_name
  dns_prefix          = var.aks_dns_prefix
  aks_subnet_id       = module.network.aks_subnet_id
  kubernetes_version  = var.aks_kubernetes_version
  system_node_pool_name = var.aks_system_node_pool_name
  system_node_count     = var.aks_system_node_count
  system_node_vm_size   = var.aks_system_node_vm_size
  resource_tags         = var.resource_tags
}

module "vm" {
  source = "./modules/vm"
}
