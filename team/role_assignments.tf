data "azurerm_subscription" "current" {}

resource "azurerm_role_assignment" "contributor" {
  for_each = var.environments

  scope                = data.azurerm_subscription.current.id
  role_definition_name = "Contributor"
  principal_id         = azurerm_user_assigned_identity.iac[each.value].principal_id
}
