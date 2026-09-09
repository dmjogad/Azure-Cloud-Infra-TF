output "cont_name" {
  value = {
    for key, value in azurerm_storage_container.containers : key => value.name
  }
}