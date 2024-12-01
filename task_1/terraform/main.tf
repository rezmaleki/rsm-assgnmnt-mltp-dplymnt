module "postgresql" {
  source            = "./postgres"
  user_passwords    = var.user_passwords
  readonly_password = var.readonly_password
  schema_name       = "public"
}
