resource "azurerm_log_analytics_workspace" "law" {
  name                = "my-log-analytics-workspace"
  location            = "northeurope"
  resource_group_name = "Log-RG"
  sku                 = "PerGB2018"
  retention_in_days   = 30
}
