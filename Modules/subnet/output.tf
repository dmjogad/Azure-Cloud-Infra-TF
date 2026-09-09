output "snet_name" {
  value = {
    for key, value in azurerm_subnet.subnets : key => value.name
  }
}