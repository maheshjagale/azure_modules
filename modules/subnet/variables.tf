variable "name" {
  description = "Name of the subnet"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "virtual_network_name" {
  description = "Name of the VNet"
  type        = string
}

variable "address_prefixes" {
  description = "Address prefixes for subnet"
  type        = list(string)
}
