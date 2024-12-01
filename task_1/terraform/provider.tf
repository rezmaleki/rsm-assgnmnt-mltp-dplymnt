terraform {
  required_providers {
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "~> 1.15"
    }
  }
}

provider "postgresql" {
  host     = "127.0.0.1"
  port     = 5432
  username = var.postgres_user
  password = var.postgres_password
  sslmode  = "disable"
}
