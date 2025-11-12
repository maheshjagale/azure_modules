resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location

  tags = merge(
    {
      Environment = var.environment
      Owner       = var.owner
    },
    var.additional_tags
  )
}
