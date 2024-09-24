dev = {
  dev1 = {
    rg_name                       = "soni_rg1"
    location                      = "westeurope"
    vnet_name                     = "vnet1"
    address_space                 = ["10.0.0.0/16"]
    snet_name                     = "snet1"
    address_prefixes              = ["10.0.0.0/24"]
    nic_name                      = "nic1"
    ip_configuration_name         = "ipconfig1"
    private_ip_address_allocation = "Dynamic"
    vm_name                       = "sonivm1"
    size                          = "Standard_DS1_v2"
    admin_username                = "username"
    admin_password                = "Password@123"
  }
}
