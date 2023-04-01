# First subscription
resource "azurerm_resource_group" "log-resource_group" {
  name     = var.Parent1_Child1_Mgmt_RG
  location = var.location
}

resource "azurerm_resource_group" "prod-resource_group" {
  name     = var.Parent2_Child1_Mgmt_RG
  location = var.location
}

resource "azurerm_resource_group" "nsp-resource_group" {
  name     = var.Parent2_Child2_Mgmt_RG
  location = var.location
}

