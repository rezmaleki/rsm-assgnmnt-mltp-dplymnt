variable "readonly_password" {
  type        = string
  description = "Password for the read-only user"
}

variable "user_passwords" {
  type        = list(string)
  description = "List of passwords for the database users"
}
variable "postgres_user"{
type=string

}
variable "postgres_password"{
type=string

}
