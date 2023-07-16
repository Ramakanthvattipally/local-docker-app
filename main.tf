resource "azurerm_resource_group" "azure_contianer_rg" {
  name     = "azure-container-rg"
  location = var.location
}

resource "azurerm_container_registry" "terraform_docker_acr" {
  name                = "ramterraformdockeracr"
  resource_group_name = azurerm_resource_group.azure_contianer_rg.name
  location            = azurerm_resource_group.azure_contianer_rg.location
  sku                 = "Basic"
}
