resource "azurerm_resource_group" "this" {
  name     = "weather-app"
  location = "Australia East"
}

resource "azurerm_resource_group" "two" {
  name     = "weather-two"
  location = "Australia East"
}