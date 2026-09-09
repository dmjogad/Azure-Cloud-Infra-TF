rg_info = {
  rg1 = {
    name     = "lakeside-rg"
    location = "centralindia"
  }
}

vnet_info = {
  vnet1 = {
    name                = "lakeside-vnet"
    address_space       = ["10.0.0.0/16"]
    location            = "centralindia"
    resource_group_name = "lakeside-rg"
  }
}

snet_info = {
  snet1 = {
    name                 = "lakeside-subnet"
    resource_group_name  = "lakeside-rg"
    virtual_network_name = "lakeside-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

stg_info = {
  stg1 = {
    name                     = "lakesiderandomstg"
    resource_group_name      = "lakeside-rg"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}

cont_info = {
  cont1 = {
    name = "lakeside-container"
    #storage_account_id    = ""
    container_access_type = "private"
    stg_name              = "lakesiderandomstg"
    resource_group_name   = "lakeside-rg"
  }
}