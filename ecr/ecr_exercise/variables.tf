variable "create" {
  description = "Whether to create the ECR repository"
  type        = bool
  default     = true
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
