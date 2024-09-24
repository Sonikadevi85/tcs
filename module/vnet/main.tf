resource "azurerm_virtual_network" "vnetb" {
    for_each = var.dev
    name = each.value.vnet_name
    resource_group_name = each.value.rg_name
    location = each.value.location
    address_space = each.value.address_space
  
}