



resource "azurerm_virtual_network" "vnet" {
  
  name                = "vnet-${var.vnet_name}"
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.resource_group_name
}




