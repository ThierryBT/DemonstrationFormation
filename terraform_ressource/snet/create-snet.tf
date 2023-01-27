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

resource "azurerm_subnet" "subtf001vnet001" {
  name                 = "snettf001"
  virtual_network_name = "vnettf001"
  address_prefixes     = ["10.0.1.0/24"]
  resource_group_name  = "DemoTF"
}

resource "azurerm_subnet" "subtf002vnet001" {
  name                 = "snettf002"
  virtual_network_name = "vnettf001"
  address_prefixes     = ["10.0.2.0/24"]
  resource_group_name  = "DemoTF"
}

resource "azurerm_subnet" "subtf003vnet001" {
  name                 = "snettf003"
  virtual_network_name = "vnettf001"
  address_prefixes     = ["10.0.3.0/24"]
  resource_group_name  = "DemoTF"
}