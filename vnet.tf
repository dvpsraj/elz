#===============================================================##===============================================================#
#===============================================================##===============================================================#
#---VNET--for--NSP---#
# resource "azurerm_network_security_group" "example" {
#   name                = "example-security-group"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name
# }

resource "azurerm_virtual_network" "nsp_vnet" {
  name                = "NSP-VNet"
  location            = var.location
  resource_group_name = var.Parent2_Child2_Mgmt_RG
  address_space       = ["10.1.0.0/16"] 
  #dns_servers         = ["10.1.1.4", "10.1.1.5"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.1.1.0/24"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "10.1.2.0/24"
    #security_group = azurerm_network_security_group.example.id
  }

  tags = {
    environment = "NSP"
  }
  depends_on = [
    azurerm_resource_group.nsp-resource_group
  ]
}

#===============================================================##===============================================================#
#===============================================================##===============================================================#

#---VNET--for--Production---#
resource "azurerm_virtual_network" "prod_vnet" {
  name                = "Prod-VNet"
  location            = var.location
  resource_group_name = var.Parent2_Child1_Mgmt_RG
  address_space       = ["192.168.0.0/16"] 
  #dns_servers         = ["192.168.1.4", "192.168.1.5"]

  subnet {
    name           = "subnet1"
    address_prefix = "192.168.1.0/24"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "192.168.2.0/24"
    #security_group = azurerm_network_security_group.example.id
  }

  tags = {
    environment = "Production"
  }
  depends_on = [
    azurerm_resource_group.prod-resource_group
  ]
}