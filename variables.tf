variable "chronicle_data_tables" {
  description = <<EOT
Map of chronicle_data_tables, attributes below
Required:
    - data_table_id
    - description
    - instance
    - location
Optional:
    - deletion_policy
    - project
    - row_time_to_live
    - column_info (block):
        - column_index (required)
        - column_type (optional)
        - key_column (optional)
        - mapped_column_path (optional)
        - original_column (required)
        - repeated_values (optional)
    - scope_info (block):
        - data_access_scopes (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    data_table_id    = string
    description      = string
    instance         = string
    location         = string
    deletion_policy  = optional(string)
    project          = optional(string)
    row_time_to_live = optional(string)
    column_info = optional(list(object({
      column_index       = number
      column_type        = optional(string)
      key_column         = optional(bool)
      mapped_column_path = optional(string)
      original_column    = string
      repeated_values    = optional(bool)
    })))
    scope_info = optional(object({
      data_access_scopes = list(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

