// Seul 2 paramètres sont obligatoire pour la création d'un RG. location et name
// terraform init && terraform fmt
// terraform plan
// terraform apply

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_virtual_network" "monvnettf001" {
  name                = "vnettf001"
  location            = "Francecentral"
  resource_group_name = "DemoTF"
  address_space       = ["10.0.0.0/16"]

  tags = {
    Env = "Test"
  }
}