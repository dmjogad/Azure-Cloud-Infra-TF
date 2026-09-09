output "stg_name" {
  value = {
    for key, value in azurerm_storage_account.stgs : key => value.name
  }
}