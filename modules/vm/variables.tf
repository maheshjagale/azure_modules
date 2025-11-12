variable "name" {
  description = "Name of the VM"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet"
  type        = string
}

variable "vm_size" {
  description = "Size of the VM"
  type        = string
}

variable "admin_username" {
  description = "Admin username for VM"
  type        = string
}

variable "admin_password" {
  description = "Admin password for VM"
  type        = string
}
