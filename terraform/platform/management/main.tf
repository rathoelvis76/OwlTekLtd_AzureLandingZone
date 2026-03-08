module "rg_platform_management" {
  source   = "../../modules/resource-group"
  name     = "rg-platform-management"
  location = "uksouth"
}

module "log_analytics" {
  source         = "../../modules/log-analytics"
  name           = "law-platform"
  location       = "uksouth"
  resource_group = module.rg_platform_management.name
}