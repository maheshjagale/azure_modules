variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "vnet_name" {
  description = "Name of the VNet"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for VNet"
  type        = list(string)
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for subnet"
  type        = list(string)
}

variable "bastion_name" {
  description = "Name of the Bastion host"
  type        = string
  default     = "trio-bastion-host"
}

variable "bastion_subnet_address_prefixes" {
  description = "Address prefixes for the Bastion subnet (must be /26 or larger)"
  type        = list(string)   
}

variable "vm_name" {
  description = "Name of the VM"
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

variable "storage_container_name" {
  description = "Name of the storage container"
  type        = string
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
}

variable "container_access_type" {
  description = "Access type for storage container"
  type        = string
}

variable "load_balancer_name" {
  description = "Name of the load balancer"
  type        = string
}

variable "aks_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "aks_dns_prefix" {
  description = "DNS prefix for AKS cluster"
  type        = string
}

variable "aks_node_count" {
  description = "Number of nodes in AKS cluster"
  type        = number
}

variable "aks_vm_size" {
  description = "Size of the VM for AKS nodes"
  type        = string
}
