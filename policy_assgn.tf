#===============================================================##===============================================================#
#===============================================================##===============================================================#

#---Policy--for--Log Management Group--#
resource "azurerm_policy_definition" "log_policy_def" {
  name                = "only-deploy-in-westeurope"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "my-log-policy-definition"
  management_group_id = azurerm_management_group.Parent1_Child1_Mgmt.id

  policy_rule = <<POLICY_RULE
 {
    "if": {
      "not": {
        "field": "location",
        "equals": "westeurope"
      }
    },
    "then": {
      "effect": "Deny"
    }
  }
POLICY_RULE
}

resource "azurerm_management_group_policy_assignment" "log_policy_assignment" {
  name                 = "log_policy_assignment"
  policy_definition_id = azurerm_policy_definition.log_policy_def.id
  management_group_id  = azurerm_management_group.Parent1_Child1_Mgmt.id
}

#===============================================================##===============================================================#
#===============================================================##===============================================================#

#---Policy--for--Production Management Group--#
resource "azurerm_policy_definition" "prod_policy_def" {
  name                = "only-deploy-in-westeurope"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "my-prod-policy-definition"
  management_group_id = azurerm_management_group.Parent2_Child1_Mgmt.id

  policy_rule = <<POLICY_RULE
 {
    "if": {
      "not": {
        "field": "location",
        "equals": "westeurope"
      }
    },
    "then": {
      "effect": "Deny"
    }
  }
POLICY_RULE
}

resource "azurerm_management_group_policy_assignment" "prod_policy_assignment" {
  name                 = "prod_policy_assignment"
  policy_definition_id = azurerm_policy_definition.prod_policy_def.id
  management_group_id  = azurerm_management_group.Parent2_Child1_Mgmt.id
}

#===============================================================##===============================================================#
#===============================================================##===============================================================#

#---Policy--for--Production Management Group--#
resource "azurerm_policy_definition" "nsp_policy_def" {
  name                = "only-deploy-in-westeurope"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "my-nsp-policy-definition"
  management_group_id = azurerm_management_group.Parent2_Child2_Mgmt.id

  policy_rule = <<POLICY_RULE
 {
    "if": {
      "not": {
        "field": "location",
        "equals": "westeurope"
      }
    },
    "then": {
      "effect": "Deny"
    }
  }
POLICY_RULE
}

resource "azurerm_management_group_policy_assignment" "nsp_policy_assignment" {
  name                 = "nsp_policy_assignment"
  policy_definition_id = azurerm_policy_definition.nsp_policy_def.id
  management_group_id  = azurerm_management_group.Parent2_Child2_Mgmt.id
}
#===============================================================##===============================================================#
#===============================================================##===============================================================#