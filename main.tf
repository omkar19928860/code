terraform {
    required_providers {
        azurerm = {
        source  = "hashicorp/azurerm"
        version = "4.26.0"
        }
    
    }
    backend "azurerm" {
        resource_group_name  = "omkarrg6"
        storage_account_name = "omkarstorageacc"
        container_name       = "tfstate"
        key                 = "terraform.tfstate"
      
    }
    
   
}
provider "azurerm" {
    features {} 
    subscription_id = "45654f43-f899-45ea-b1e1-41582688985f"
  
}

resource "azurerm_resource_group" "omkar" {
    name     = "omkarrg6"
    location = "East US"
  
}