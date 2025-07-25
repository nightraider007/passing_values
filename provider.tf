# provider.tf

data "azurerm_client_config" "current" {}

variable "client_id" {
  description = "The Client ID of the Azure Service Principal"
  type        = string
}

variable "client_secret" {
  description = "The Client Secret of the Azure Service Principal"
  type        = string
  sensitive   = true
}

variable "subscription_id" {
  description = "The Subscription ID for the Azure account"
  type        = string
}

variable "tenant_id" {
  description = "The Tenant ID for the Azure account"
  type        = string
}






terraform {
  required_version = ">= 1.8.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.4.0"
    }
  }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = true
    }
  }

  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}