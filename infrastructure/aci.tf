resource "azurerm_container_group" "app" {
  name                = "beardedweatherapp"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  ip_address_type     = "Public"
  dns_name_label      = "beardedweatherapp"
  os_type             = "Linux"

  container {
    name   = "weatherapp"
    image  = "beardedweatherapp.azurecr.io/weatherapp:latest"
    cpu    = "0.5"
    memory = "1.5"

    ports {
      port     = 80
      protocol = "TCP"
    }
  }
}