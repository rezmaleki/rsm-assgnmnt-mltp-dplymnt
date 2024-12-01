
variable "postgresql_instances" {
  type = map(object({
    port     = number
    password = string
  }))
  description = "Map of PostgreSQL instances with their configurations"
  default = {}
}


variable "readonly_password" {
  type        = string
  description = "Password for the read-only user"
}

variable "user_passwords" {
  type        = list(string)
  description = "List of passwords for the database users"
}


variable "user_count" {
  type        = number
  description = "Number of users to create"
  default     = 3
}


variable "readonly_user" {
  type        = string
  description = "Read-only user name"
}
variable "schema_name" {
  type        = string
  description = "Schema name for granting permissions"
  default     = "public"
}
