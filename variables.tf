#Example variables
variable "location" {
  description = "Azure region"
  type        = string
  default     = "West Europe"

variable "environment" {
  description = "Environment name (dev, staging, prod)"
  type        = string
}

variable "resource_group_name" {
  type = string
}