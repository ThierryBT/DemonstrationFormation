// Création d'un morceau d'environnement ou les ressources RG, Vnet, Snet sont dans le même fichier
//
// Les données du bloc azurerm_resource_group.monrg0001 sont réutilisées dans le bloc azurerm_virtual_network
// 
// terraform init -upgrade && terraform fmt
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

resource "azurerm_resource_group" "monrg0001" {
  name     = "DemoEnvTF"
  location = "Francecentral"
}

resource "azurerm_virtual_network" "monvnettf001" {
  name                = "vnettf002"
  location            = azurerm_resource_group.monrg0001.location
  resource_group_name = azurerm_resource_group.monrg0001.name
  address_space       = ["10.0.0.0/16"]

  subnet {
    name           = "snettf001"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "snettf002"
    address_prefix = "10.0.2.0/24"
  }

  subnet {
    name           = "snettf003"
    address_prefix = "10.0.3.0/24"
  }

  tags = {
    Env = "Test"
  }
}