variable "location" {
  type        = string
  description = "The location/region of the resources."
  default     = "Germany West Central"
  nullable    = false

  validation {
    condition     = var.location != ""
    error_message = "The location must not be empty."
  }
}

variable "github_org" {
  type        = string
  description = "The name of the GitHub organisation."
  nullable    = false

  validation {
    condition     = var.github_org != ""
    error_message = "The GitHub organisation must not be empty."
  }
}

variable "github_token" {
  type        = string
  description = "The token to authenticate against the GitHub API."
  sensitive   = true
  nullable    = false

  validation {
    condition     = var.github_token != ""
    error_message = "The GitHub token must not be empty."
  }
}
