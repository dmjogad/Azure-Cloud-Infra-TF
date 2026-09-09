output "rg_name" {
  value = module.resource_group.rg_name
}

output "vnet_name" {
  value = module.vnet.vnet_name
}

output "subnet_name" {
  value = module.snet.snet_name
}

output "stg_acc_name" {
  value = module.storage_account.stg_name
}

output "container_name" {
  value = module.container.cont_name
}