terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.16.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "tu ID de la suscripción de Azure"
}

variable "nombre_grupo_recursos" {
  type = string
  default = "miPrimerGrupoAmin"  
}

resource "azurerm_resource_group" "rg" {
  location = "mexicocentral"
  name = var.nombre_grupo_recursos
}