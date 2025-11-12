# terraform.tfvars

resource_group_name    = "trio-az-rg-1"
location               = "centralindia"

vnet_name              = "trio-vnet-1"
vnet_address_space     = ["10.0.0.0/16"]

subnet_name            = "trio-subnet"
subnet_address_prefixes = ["10.0.1.0/24"]

vm_name                = "trio-vm-1"
vm_size                = "Standard_B1s"
admin_username         = "azureuser"
admin_password         = "P@ssw0rd1234!"

storage_container_name = "trio-container"
storage_account_name   = "triostorageacct123" # must be unique
container_access_type  = "private"

load_balancer_name     = "trio-lb-1"

aks_name               = "trio-aks-cluster"
aks_dns_prefix         = "trioaks"
aks_node_count         = 2
aks_vm_size            = "Standard_B2s"
