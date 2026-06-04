resource "azurerm_virtual_network" "aks" {
  name                = "${var.network_name_prefix}-vnet"
  location            = var.azure_location
  resource_group_name = var.resource_group_name
  address_space       = var.virtual_network_address_space
  tags                = var.resource_tags
}

resource "azurerm_subnet" "aks_nodes" {
  name                 = "${var.network_name_prefix}-nodes-subnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.aks.name
  address_prefixes     = var.aks_node_subnet_address_prefixes
  service_endpoints    = ["Microsoft.ContainerRegistry", "Microsoft.Storage"]
}
