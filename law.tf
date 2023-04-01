resource "azurerm_log_analytics_workspace" "log_law" {
  name                = "my-log-analytics-workspace"
  location            = var.location
  resource_group_name = var.Parent1_Child1_Mgmt_RG
  sku                 = "PerGB2018"
  retention_in_days   = 30
  depends_on = [
    azurerm_resource_group.log-resource_group
  ]
}
