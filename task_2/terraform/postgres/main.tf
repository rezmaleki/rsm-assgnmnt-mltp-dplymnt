resource "postgresql_database" "databases" {
  count = length(var.user_passwords)
  name  = "db${count.index + 1}"
}

resource "postgresql_role" "users" {
  count = length(var.user_passwords)
  name     = "user${count.index + 1}"
  password = var.user_passwords[count.index]
  login    = true
}

resource "postgresql_grant" "permissions" {
  count = length(var.user_passwords)
  database    = postgresql_database.databases[count.index].name
  role        = postgresql_role.users[count.index].name
  privileges  = ["ALL"]
  object_type = "database"
}

resource "postgresql_role" "readonly_user" {
  name     = var.readonly_user
  password = var.readonly_password
  login    = true
}

# Grant CONNECT privilege on databases
resource "postgresql_grant" "readonly_database_permissions" {
  count = length(var.user_passwords)
  database    = postgresql_database.databases[count.index].name
  role        = postgresql_role.readonly_user.name
  privileges  = ["CONNECT"]
  object_type = "database"
}
# Grant USAGE privilege on schemas
resource "postgresql_grant" "readonly_schema_permissions" {
  count = length(var.user_passwords)
  database    = postgresql_database.databases[count.index].name
  schema      = "public" # Or specify the schema name
  role        = postgresql_role.readonly_user.name
  privileges  = ["USAGE"]
  object_type = "schema"
}

# Grant SELECT privilege on all tables in the schema
resource "postgresql_grant" "readonly_table_permissions" {
  count = length(var.user_passwords)
  database    = postgresql_database.databases[count.index].name
  schema      = "public" # Or specify the schema name
  role        = postgresql_role.readonly_user.name
  privileges  = ["SELECT"]
  object_type = "table"
}
