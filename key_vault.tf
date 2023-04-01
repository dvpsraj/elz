#===============================================================##===============================================================#
#===============================================================##===============================================================#
#---KeyVault--for--NSP---#
resource "azurerm_key_vault" "prod_keyvault" {
  name                        = var.ProdKeyVaultName
  location                    = var.location
  resource_group_name         = var.Parent2_Child1_Mgmt_RG
  enabled_for_disk_encryption = true
  tenant_id                   = var.tenantId
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = var.tenantId
    object_id = var.objectId

    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get",
    ]

    storage_permissions = [
      "Get",
    ]
  }
  depends_on = [
    azurerm_resource_group.prod-resource_group
  ]
}
#===============================================================##===============================================================#
#===============================================================##===============================================================#
#---KeyVault--for--NSP---#
resource "azurerm_key_vault" "nsp_keyvault" {
  name                        = var.NSPKeyVaultName
  location                    = var.location
  resource_group_name         = var.Parent2_Child2_Mgmt_RG
  enabled_for_disk_encryption = true
  tenant_id                   = var.tenantId
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = var.tenantId
    object_id = var.objectId

    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get",
    ]

    storage_permissions = [
      "Get",
    ]
  }
  depends_on = [
    azurerm_resource_group.prod-resource_group
  ]
}
#===============================================================##===============================================================#
#===============================================================##===============================================================#