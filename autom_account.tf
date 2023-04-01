resource "azurerm_automation_account" "automation_account" {
  name                = "Automation-account"
  location            = var.location
  resource_group_name = var.Parent1_Child1_Mgmt_RG
  sku_name            = "Basic"
  tags                = {
    environment = "Log"
  }
  depends_on = [
    azurerm_resource_group.log-resource_group
  ]
}
