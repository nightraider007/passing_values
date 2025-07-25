

resource "azurerm_subnet" "subnets" {
  count                = length(var.subnet_names)
  name                 = var.subnet_names[count.index]
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = ["10.0.${count.index}.0/24"]
}

output "subnet_ids" {
  value = azurerm_subnet.subnets[*].id
}


