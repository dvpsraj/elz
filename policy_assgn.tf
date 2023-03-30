resource "azurerm_policy_definition" "policy_def" {
  name                = "only-deploy-in-westeurope"
  policy_type         = "Custom"
  mode                = "All"
  display_name        = "my-policy-definition"
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

resource "azurerm_management_group_policy_assignment" "policy_assignment" {
  name                 = "policy_assignment"
  policy_definition_id = azurerm_policy_definition.policy_def.id
  management_group_id  = azurerm_management_group.Parent1_Child1_Mgmt.id
}