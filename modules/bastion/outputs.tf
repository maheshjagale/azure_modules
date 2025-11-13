output "bastion_host_name" {
  description = "Name of the Bastion host"
  value       = azurerm_bastion_host.bastion.name
}

output "bastion_public_ip" {
  description = "Public IP address of the Bastion host"
  value       = azurerm_public_ip.bastion_pip.ip_address
}
