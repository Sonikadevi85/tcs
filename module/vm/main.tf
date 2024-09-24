data "azurerm_network_interface" "dnicb" {
  for_each = var.dev
  name = each.value.nic_name
  resource_group_name = each.value.rg_name
}

resource "azurerm_linux_virtual_machine" "vmb" {
  for_each = var.dev
  name = each.value.vm_name
  resource_group_name = each.value.rg_name
  location = each.value.location
  size = each.value.size
  admin_username = each.value.admin_username
  admin_password = each.value.admin_password
  disable_password_authentication = false
  network_interface_ids = [ data.azurerm_network_interface.dnicb[each.key].id, ]
  os_disk {
    caching = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
source_image_reference {
  publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"

  }
}