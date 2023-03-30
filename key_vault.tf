# resource "azurerm_key_vault" "KeyVault_NSP" {
#   name                = "KeyVault_NSP"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name

#   sku_name = "standard"

#   access_policies {
#     tenant_id  = "<YOUR_TENANT_ID>"
#     object_id  = "<YOUR_OBJECT_ID>"
#     secret_permissions = [
#       "get",
#       "list",
#       "set",
#       "delete",
#       "backup",
#       "restore"
#     ]
#     key_permissions = [
#       "get",
#       "list",
#       "create",
#       "delete",
#       "backup",
#       "restore"
#     ]
#   }

#   tags = {
#     environment = "dev"
#   }
# }
