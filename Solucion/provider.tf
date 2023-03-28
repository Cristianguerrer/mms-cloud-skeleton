terraform {
  required_version = ">=1.3.7"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.44.1"
    }
  }
}

provider "google" {
  project = "azjtp4imscisnfy8crfrxje12x2ln4"
  region  = var.region
  zone    = var.zone
  credentials = file("azjtp4imscisnfy8crfrxje12x2ln4-2516b0c406c6.json")
}

