data "azurerm_storage_account" "stgs" {
  for_each = var.cont_info
  name                = each.value.stg_name
  resource_group_name = each.value.resource_group_name
}

# data "azurerm_storage_container" "cont" {
#   for_each = var.cont_info
#   name               = each.value.name
#   storage_account_id = data.azurerm_storage_account.stgs[each.key].id
# }