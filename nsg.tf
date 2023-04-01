#---NSG--for--NSP---#
resource "azurerm_network_security_group" "nsp_nsg" {
  name                = "NSP-NSG"
  location            = var.location
  resource_group_name = var.Parent2_Child2_Mgmt_RG

  security_rule {
    name                       = "nsp_nsg"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    environment = "NSP"
  }
  depends_on = [
    azurerm_virtual_network.nsp_vnet
  ]
}

#===============================================================##===============================================================#
#===============================================================##===============================================================#
#---NSG--for--Production---#
resource "azurerm_network_security_group" "prod_nsg" {
  name                = "Prod-NSG"
  location            = var.location
  resource_group_name = var.Parent2_Child1_Mgmt_RG

  security_rule {
    name                       = "prod_nsg"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    environment = "Production"
  }
    depends_on = [
    azurerm_virtual_network.prod_vnet
  ]
}