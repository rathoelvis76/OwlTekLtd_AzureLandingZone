module "rg_network" {
  source   = "../../modules/resource-group"
  name     = "rg-platform-network"
  location = "uksouth"
}

module "hub_vnet" {
  source         = "../../modules/vnet"
  name           = "vnet-hub"
  location       = "uksouth"
  resource_group = module.rg_network.name
  address_space  = ["10.0.0.0/16"]
  subnet_name    = "snet-shared"
  subnet_prefix  = ["10.0.1.0/24"]
}