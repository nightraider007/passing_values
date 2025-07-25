




resource "azurerm_resource_group" "rg" {
  name     = var.Child-Module-resource_group_name
  location = var.Child-Module-resource_group_location

   /* lifecycle {
    prevent_destroy = true
    ignore_changes  = [name, tags]
  } */
}