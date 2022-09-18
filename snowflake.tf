resource "snowflake_database" "db" {
  name     = "challenge"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "rappibank"
  warehouse_size = "large"
  auto_suspend = 60
}

resource snowflake_schema schema {
  database = snowflake_database.db.name
  name     = "andrestuarr"
  comment  = "schema for challenge"

  is_transient        = false
  is_managed          = false
}

resource "snowflake_table" "table" {
  database            = snowflake_schema.schema.database
  schema              = snowflake_schema.schema.name
  name                = "members"
  comment             = "table of members"
  change_tracking     = false

  column {
    name     = "member_id"
    type     = "int"
    nullable = true
  }

  column {
    name     = "bio"
    type     = "text"
    nullable = true
  }

  column {
    name     = "city"
    type     = "text"
    nullable = true
  }

  column {
    name     = "country"
    type     = "text"
    nullable = true
  }

  column {
    name     = "hometown"
    type     = "text"
    nullable = true
  }

  column {
    name     = "joined"
    type     = "TIMESTAMP"
    nullable = true
  }

  column {
    name     = "lat"
    type     = "text"
    nullable = true
  }

  column {
    name     = "link"
    type     = "text"
    nullable = true
  }

  column {
    name     = "lon"
    type     = "text"
    nullable = true
  }

  column {
    name     = "member_name"
    type     = "text"
    nullable = true
  }

  column {
    name     = "state"
    type     = "text"
    nullable = true
  }

  column {
    name     = "member_status"
    type     = "text"
    nullable = true
  }

  column {
    name     = "visited"
    type     = "TIMESTAMP"
    nullable = true
  }

  column {
    name     = "group_id"
    type     = "int"
    nullable = true
  }
}