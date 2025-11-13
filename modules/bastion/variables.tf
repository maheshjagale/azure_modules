variable "bastion_name" {
  description = "Name of the Bastion host"
  type        = string
}

variable "location" {
  description = "Azure region for the Bastion host"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet where the Bastion host will be deployed"
  type        = string
}
