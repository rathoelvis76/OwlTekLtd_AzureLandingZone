module "rg_network" {
  source   = "../modules/resource-group"
  name     = "rg-${var.environment}-network"
  location = var.location
}

module "vnet" {
  source         = "../modules/vnet"
  name           = "vnet-${var.environment}"
  location       = var.location
  resource_group = module.rg_network.name

  address_space = [var.vnet_address_space]

  subnet_name   = "snet-app"
  subnet_prefix = [var.subnet_prefix]
}