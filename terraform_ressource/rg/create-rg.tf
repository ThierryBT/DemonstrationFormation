// Seul 2 paramètres sont obligatoire pour la création d'un RG. location et name
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
  name     = "DemoTF"
  location = "Francecentral"
}