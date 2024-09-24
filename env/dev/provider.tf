terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.3.0"
    }
  }
}
provider "azurerm" {
  features {
  }
  subscription_id = "9a38078e-2af6-4078-9a64-40ce52093659"
}