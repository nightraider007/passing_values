


variable "resource_group_name" {
  type        = string
  description = "Name of the RG where the VNet will be created"
}

variable "location" {
  type        = string
  description = "Location for the VNet"
}

variable "vnet_name" {
  type        = string
  default     = "myVnet"
}

variable "address_space" {
  description = "Address space of the virtual network"
  type = list(string)
}


