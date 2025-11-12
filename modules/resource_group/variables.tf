variable "resource_group_name" {
  description = "The name of the Azure Resource Group to be created."
  type        = string
}

variable "location" {
  description = "The Azure region where the Resource Group will be created."
  type        = string
  default     = "centralindia"
}

variable "environment" {
  description = "Specifies the deployment environment (e.g., dev, stg, prod)."
  type        = string
  default     = "dev"
  validation {
    condition     = contains(["dev", "stg", "prod"], var.environment)
    error_message = "Environment must be one of: dev, stg, or prod."
  }
}
