output "rg_name" {
  value = {
    for key, value in azurerm_resource_group.rgs : key => value.name
  }
}