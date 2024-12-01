output "databases" {
  value = postgresql_database.databases[*].name
}

output "users" {
  value = postgresql_role.users[*].name
}

output "readonly_user" {
  value = postgresql_role.readonly_user.name
}
