resource "azurerm_automation_account" "automation_account" {
  name                = "automation-account"
  location            = "westeurope"
  resource_group_name = "Log-RG"
  sku_name            = "Basic"
  tags                = {
    environment = "dev"
  }
}
