# First subscription
resource "azurerm_resource_group" "log-resource_group" {
  name     = "Log-RG"
  location = var.location
}

# # Second subscription
# resource "azurerm_resource_group" "NSP-resource_group" {
#   name     = "NSP-RG"
#   location = var.location
# }

