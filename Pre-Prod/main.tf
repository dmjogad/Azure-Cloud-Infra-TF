module "resource_group" {
  source  = "../Modules/RG"
  rg_info = var.rg_info
}

module "vnet" {
  depends_on = [module.resource_group]
  source     = "../Modules/vnet"
  vnet_info  = var.vnet_info
}

module "snet" {
  depends_on = [module.vnet]
  source     = "../Modules/subnet"
  snet_info  = var.snet_info
}

module "storage_account" {
  depends_on = [module.resource_group]
  source     = "../Modules/stg_acc"
  stg_info   = var.stg_info
}

module "container" {
  depends_on = [module.storage_account]
  source     = "../Modules/container"
  cont_info  = var.cont_info
}