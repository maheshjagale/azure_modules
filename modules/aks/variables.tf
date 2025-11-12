variable "name" {
  description = "Name of the AKS cluster"
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

variable "dns_prefix" {
  description = "DNS prefix for AKS cluster"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in AKS cluster"
  type        = number
}

variable "vm_size" {
  description = "Size of the VM for AKS nodes"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet"
  type        = string
}
