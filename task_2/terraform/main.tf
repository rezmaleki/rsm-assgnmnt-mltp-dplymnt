
module "postgresql_instance_1" {
  source            = "./postgres"
  user_passwords    = var.user_passwords
  readonly_password = var.readonly_password
  schema_name       = "public"
  readonly_user= var.readonly_user

  providers = {
    postgresql = postgresql.db1
  }
}

module "postgresql_instance_2" {
  source            = "./postgres"
  user_passwords    = var.user_passwords
  readonly_password = var.readonly_password
  schema_name       = "public"
  readonly_user= var.readonly_user
  providers = {
    postgresql = postgresql.db2
  }
}

module "postgresql_instance_3" {
  source            = "./postgres"
  user_passwords    = var.user_passwords
  readonly_password = var.readonly_password
  schema_name       = "public"
  readonly_user= var.readonly_user
  providers = {
    postgresql = postgresql.db3
  }
}
