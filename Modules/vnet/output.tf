output "vnet_name" {
  value = {
    for key, value in azurerm_virtual_network.vnets : key => value.name
  }
}