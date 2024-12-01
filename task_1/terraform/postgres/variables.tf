
variable "user_passwords" {
  type        = list(string)
  description = "List of passwords for the users"
}


variable "readonly_password" {
  type        = string
  description = "Password for the read-only user"
}

variable "schema_name" {
  type        = string
  description = "Schema name for granting permissions"
  default     = "public"
}
