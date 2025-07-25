

variable "policyname" {
  description = "Name of the policy to be applied"
  type        = string
}



//resource group variables
variable "Parent-resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
  default     = "myResourceGroup"
}

variable "Parent-resource_group_location" {
  description = "The Azure region where resources will be created"
  type        = string
  default     = "East US"
}



 //vnet variables  
variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
  default     = "myVnet"
}

variable "vnet_IP_address" {
  description = "IP address for the Virtual Network"
  type        = list(string)
  
}