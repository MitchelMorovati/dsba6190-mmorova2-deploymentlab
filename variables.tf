variable "tag_class" {
  type    = string
  default = "dsba6190"
}

variable "tag_instructor" {
  type    = string
  default = "cford38"
}


variable "tag_semester" {
  type    = string
  default = "fall2024"
}

variable "location" {
  description = "Location of Resource Group"
  type        = string
  default     = "eastus"

  validation {
    condition     = contains(["eastus"], lower(var.location))
    error_message = "Unsupported Azure Region specified."
  }
}


// Azure-Specific App Variables

variable "environment" {
  description = "Environment"
  type        = string
  default     = "dev"
}

variable "student_name" {
  description = "Application Name"
  type        = string
  default     = "mmorova2"
}

variable "class_name" {
  description = "Application Name"
  type        = string
  default     = "dsba6190"
}

variable "sql_admin_username" {
  description = "Administrator username for Azure SQL Server"
  type        = string
  default     = "username"
}

variable "sql_admin_password" {
  description = "Administrator password for Azure SQL Server"
  type        = string
  sensitive   = true
  default     = "password"
}