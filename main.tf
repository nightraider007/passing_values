# main.tffff


module "parent-resource-group" {
  source = "./modules/general/resourcegroup"
  # Pass variables to the module
  Child-Module-resource_group_name =  var.Parent-resource_group_name
  Child-Module-resource_group_location = var.Parent-resource_group_location
  
}
  





module "parent-vnet" {

  source = "./modules/networking/vnet"
  resource_group_name = module.parent-resource-group.out-Module-resource_group_name
  location            = module.parent-resource-group.out-Module-resource_group_location
  address_space       = var.vnet_IP_address
  vnet_name           = var.vnet_name

depends_on = [module.parent-resource-group]
}


module "subnet" {
  source = "./modules/networking/subnet"
  subnet_names         = ["frontend", "backend", "db"]
  resource_group_name  = module.parent-resource-group.out-Module-resource_group_name
  virtual_network_name = module.parent-vnet.vnet_name
}












#  # Pass variables to the module
#   resource_group_name = module.resource-group.resource_group_name
#   location            = module.resource-group.resource_group_location
#   vnet_name           = var.vnet_name
#   #subnets             = ["${var.vnet_name}-Web", "${var.vnet_name}-Db"]










# module "general" {
#   source      = "./modules/general/textfiles"
#   file_name   = "hello.txt"
#   file_content = "Hello from root → module → root!"
# }

# output "file_name_from_module" {
#   value = module.general.output_file_namewww
# }








