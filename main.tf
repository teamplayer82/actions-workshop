terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>4.14.0"
    }
  }
}
provider "azurerm" {
  subscription_id = "9fae4087-6fd2-4b98-9ec6-8f869b9ff2b9"
  resource_provider_registrations = "core"
  features {}
}
resource "azurerm_resource_group" "dummy" {
  name     = "rg-terraform-dummy"
  location = "westeurope"
  tags = {
    Kostenstelle   = "your-value"
    Ablaufdatum    = "your-value"
    verantwortlich = "your-value"
    Umgebung       = "your-value"
  }
}