terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.35"
    }
  }
}

provider "snowflake" {
  role  = "SYSADMIN"
}

resource "snowflake_database" "db" {
  name     = "challenge"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "rappibank"
  warehouse_size = "large"

  auto_suspend = 60
}