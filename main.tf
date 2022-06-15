terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "0.12.28-build-number-230"
    }
  }
}

terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "trial-test"

    workspaces {
      name = "june-06-WS-03"
    }
  }
}

provider "azurerm" {
  features{}
  
  subscription_id = ""
  tenant_id = ""
  client_id = ""
  client_secret = ""
}

resource "azurerm_resource_group" "myresourcegroup" {
  name     = "June-TFC-Org-TWO"
  location = "canadaeast"

  tags = {
    environment = "Production"
  }
}
