terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0" 
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group" {
  source   = "./modules/resource_group"
  name     = var.resource_group_name
  location = var.location
}

module "vnet" {
  source              = "./modules/vnet"
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
}

module "subnet" {
  source               = "./modules/subnet"
  name                 = var.subnet_name
  resource_group_name  = module.resource_group.name
  virtual_network_name = module.vnet.name
  address_prefixes     = var.subnet_address_prefixes
}

module "vm" {
  source               = "./modules/vm"
  name                 = var.vm_name
  location             = module.resource_group.location
  resource_group_name  = module.resource_group.name
  subnet_id            = module.subnet.id
  vm_size              = var.vm_size
  admin_username       = var.admin_username
  admin_password       = var.admin_password
}

module "storage_container" {
  source               = "./modules/storage_container"
  name                 = var.storage_container_name
  storage_account_name = var.storage_account_name
  resource_group_name  = module.resource_group.name
  container_access_type = var.container_access_type
}

module "load_balancer" {
  source              = "./modules/load_balancer"
  name                = var.load_balancer_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
}

module "aks" {
  source              = "./modules/aks"
  name                = var.aks_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
  dns_prefix          = var.aks_dns_prefix
  node_count          = var.aks_node_count
  vm_size             = var.aks_vm_size
  subnet_id           = module.subnet.id
}
