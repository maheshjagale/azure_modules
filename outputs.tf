output "resource_group_name" {
  description = "Name of the created resource group"
  value       = module.resource_group.name
}

output "resource_group_location" {
  description = "Location of the created resource group"
  value       = module.resource_group.location
}

output "vnet_name" {
  description = "Name of the created VNet"
  value       = module.vnet.name
}

output "vnet_id" {
  description = "ID of the created VNet"
  value       = module.vnet.id
}

output "subnet_id" {
  description = "ID of the created subnet"
  value       = module.subnet.id
}

output "vm_public_ip" {
  description = "Public IP address of the VM (if applicable)"
  value       = module.vm.vm_public_ip
}

output "storage_container_name" {
  description = "Name of the created storage container"
  value       = module.storage_container.name
}

output "load_balancer_public_ip" {
  description = "Public IP address of the load balancer"
  value       = module.load_balancer.public_ip_address
}

output "aks_cluster_name" {
  description = "Name of the AKS cluster"
  value       = module.aks.cluster_name
}

output "aks_kube_config" {
  description = "Kubeconfig for the AKS cluster"
  value       = module.aks.kube_config
  sensitive   = true
}
