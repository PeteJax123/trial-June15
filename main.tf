terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

terraform {
  backend "remote" {
    hostname = "tfe.eastus.cloudapp.azure.com"
    organization = "DanielTest"

    workspaces {
      name = "june-06-WS-03"
    }
  }
}

resource "azurerm_resource_group" "myresourcegroup" {
  name     = "June-TFC-Org-THREE"
  location = "canadaeast"

  tags = {
    environment = "Production"
  }
}
