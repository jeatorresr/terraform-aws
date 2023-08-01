variable "create" {
  description = "Whether to create the ECR repository"
  type        = bool
  default     = true
}

variable "create_life_policy" {
  description = "Whether to create the ECR policy"
  type        = bool
  default     = false
}

variable "name" {
  description = "Name of the repository"
  type        = string
  default     = ""
}

variable "image_tag_mutability" {
  description = "The tag mutability setting for the repository. Must be one of: MUTABLE or IMMUTABLE. Defaults to IMMUTABLE"
  type        = string
  default     = "INMUTABLE"
}

variable "image_scanning_configuration" {
  description = "Configuration block that defines image scanning configuration for the repository"
  type        = any
  default     = {}
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
