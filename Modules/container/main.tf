resource "azurerm_storage_container" "containers" {
  for_each = var.cont_info
  name                  = each.value.name
  storage_account_id    = data.azurerm_storage_account.stgs[each.key].id
  container_access_type = each.value.container_access_type
}