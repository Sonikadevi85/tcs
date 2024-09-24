data "azurerm_subnet" "dsnetb" {
  for_each = var.dev
  name = each.value.snet_name
  resource_group_name = each.value.rg_name
  virtual_network_name = each.value.vnet_name
}

resource "azurerm_network_interface" "nicb" {
    for_each = var.dev
    name = each.value.nic_name
    resource_group_name = each.value.rg_name
    location = each.value.location
    ip_configuration {
      name = each.value.ip_configuration_name
      subnet_id = data.azurerm_subnet.dsnetb[each.key].id
      private_ip_address_allocation = each.value.private_ip_address_allocation
    }
  
}