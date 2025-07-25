


output "resource_group_name" {
    value =   azurerm_virtual_network.vnet.resource_group_name  
}

output "location" {
    value = azurerm_virtual_network.vnet.location
}

output "vnet_name" {
    value = azurerm_virtual_network.vnet.name

}

output "address_space" {
    value = azurerm_virtual_network.vnet.address_space
}

