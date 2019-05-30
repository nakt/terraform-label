variable "namespace" {
  description = "Organization name or abbreviation"
  type        = string
  default     = ""
}

variable "environment" {
  description = "e.g 'prd'. 'stg', 'dev', 'UAT'"
  type        = string
  default     = ""
}

variable "name" {
  description = "e.g 'api', 'managementtools'"
  type        = string
  default     = ""
}

variable "delimiter" {
  description = "Delimiter to be used between each parameters"
  type        = string
  default     = "-"
}

variable "owner" {
  description = "email address of environment owner"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Additional tags"
  type        = map(string)
  default     = {}
}
