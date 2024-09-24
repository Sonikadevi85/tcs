module "rg" {
  source = "../../module/rg"
  dev    = var.dev
}
module "vnet" {
  source     = "../../module/vnet"
  dev        = var.dev
  depends_on = [module.rg]
}
module "snet" {
  source     = "../../module/subnet"
  dev        = var.dev
  depends_on = [module.vnet]
}
module "nic" {
  source     = "../../module/nic"
  dev        = var.dev
  depends_on = [module.snet]
}
module "vm" {
  source     = "../../module/vm"
  dev        = var.dev
  depends_on = [module.nic]
}