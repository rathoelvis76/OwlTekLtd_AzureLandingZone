variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "uksouth"
}

variable "vnet_address_space" {
  description = "Address space for the VNet"
  type        = string
}

variable "subnet_prefix" {
  description = "Subnet CIDR range"
  type        = string
}