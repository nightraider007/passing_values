





variable "subnet_names" {
  type        = list(string)
  description = "List of subnet names to create"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "virtual_network_name" {
  type        = string
  description = "The name of the virtual network"
}