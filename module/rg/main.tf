resource "azurerm_resource_group" "rgb" {
 for_each = var.dev
   name = each.value.rg_name
  location = each.value.location
}