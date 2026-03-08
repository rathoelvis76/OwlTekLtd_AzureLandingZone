resource "azurerm_management_group" "platform" {
  name         = "platform"
  display_name = "Platform"
}

resource "azurerm_management_group" "landingzones" {
  name         = "landingzones"
  display_name = "Landing Zones"
}

resource "azurerm_management_group" "dev" {
  name                       = "dev"
  display_name               = "Development"
  parent_management_group_id = azurerm_management_group.landingzones.id
}

resource "azurerm_management_group" "Stage" {
  name                       = "Stage"
  display_name               = "Staging"
  parent_management_group_id = azurerm_management_group.landingzones.id
}

resource "azurerm_management_group" "prod" {
  name                       = "prod"
  display_name               = "Production"
  parent_management_group_id = azurerm_management_group.landingzones.id
}