variable "namespace" {
  type        = "string"
  default     = ""
  description = "Organization name or abbreviation"
}

variable "environment" {
  type        = "string"
  default     = ""
  description = "e.g 'prd'. 'stg', 'dev', 'UAT'"
}

variable "name" {
  type        = "string"
  default     = ""
  description = "e.g 'api', 'managementtools'"
}

variable "delimiter" {
  type        = "string"
  default     = "-"
  description = "Delimiter to be used between each parameters"
}

variable "owner" {
  type        = "string"
  default     = ""
  description = "email address of environment owner"
}

variable "tags" {
  type        = "map"
  default     = {}
  description = "Additional tags"
}
