terraform {
  required_providers {
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "~> 1.15"
    }
  }
}

# Provider configuration for instance 1
provider "postgresql" {
  alias    = "db1"
  port     = var.postgresql_instances.db1.port
  password = var.postgresql_instances.db1.password
  sslmode  = "disable"
}

# Provider configuration for instance 2
provider "postgresql" {
  alias    = "db2"
  port     = var.postgresql_instances.db2.port
  password = var.postgresql_instances.db2.password
  sslmode  = "disable"
}

# Provider configuration for instance 3
provider "postgresql" {
  alias    = "db3"
  port     = var.postgresql_instances.db3.port
  password = var.postgresql_instances.db3.password
  sslmode  = "disable"
}
