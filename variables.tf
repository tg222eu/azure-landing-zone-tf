variable "location" {
    description = "Azure region"
    type        = string
    default     = "Sweden Central"
}

variable "networking_resource_group_name"{
    description = "Networking resource group"
    type        = string
    default     = "rg-networking"
}

variable "app_subnet_group_name"{
    description = "App subnet"
    type        = string
    default     = "snet-app"
}

variable "Data_subnet_group_name"{
    description = "Data subnet"
    type        = string
    default     = "snet-data"
}

variable "Management_subnet_group_name"{
    description = "Management subnet"
    type        = string
    default     = "snet-mgmt"
}