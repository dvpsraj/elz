# Move Subscription to log mgmt Group
resource "azurerm_management_group_subscription_association" "subscription_to_log" {
 management_group_id = azurerm_management_group.Parent1_Child1_Mgmt.id
 subscription_id = var.Parent1_Child1_subscription_id
}

# Move Subscription to prod mgmt Group
resource "azurerm_management_group_subscription_association" "subscription_to_Production" {
 management_group_id = azurerm_management_group.Parent2_Child1_Mgmt.id
 subscription_id = var.Parent2_Child1_subscription_id
}

# Move Subscription to nsp Group
resource "azurerm_management_group_subscription_association" "subscription_to_nsp" {
 management_group_id = azurerm_management_group.Parent2_Child2_Mgmt.id
 subscription_id = var.Parent2_Child2_subscription_id
}