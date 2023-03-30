provider "azurerm" {
 features {}
}

resource "azurerm_management_group" "Top_level_Mgmt" {
 name = var.Top_level_Mgmt
 display_name = var.Top_level_Mgmt
 parent_management_group_id = null
}

resource "azurerm_management_group" "Parent1_Mgmt" {
 name = var.Parent1_Mgmt
 display_name = var.Parent1_Mgmt
 parent_management_group_id = azurerm_management_group.Top_level_Mgmt.id
}

resource "azurerm_management_group" "Parent2_Mgmt" {
 name = var.Parent2_Mgmt
 display_name= var.Parent2_Mgmt
 parent_management_group_id = azurerm_management_group.Top_level_Mgmt.id
}

resource "azurerm_management_group" "Parent1_Child1_Mgmt" {
 name = var.Parent1_Child1_Mgmt
 display_name = var.Parent1_Child1_Mgmt
 parent_management_group_id = azurerm_management_group.Parent1_Mgmt.id
}

resource "azurerm_management_group" "Parent2_Child1_Mgmt" {
 name = var.Parent2_Child1_Mgmt
 display_name = var.Parent2_Child1_Mgmt
 parent_management_group_id = azurerm_management_group.Parent2_Mgmt.id
}

resource "azurerm_management_group" "Parent2_Child2_Mgmt" {
 name = var.Parent2_Child2_Mgmt
 display_name = var.Parent2_Child2_Mgmt
 parent_management_group_id = azurerm_management_group.Parent2_Mgmt.id
}