resource "google_chronicle_data_table" "chronicle_data_tables" {
  for_each = var.chronicle_data_tables

  data_table_id    = each.value.data_table_id
  description      = each.value.description
  instance         = each.value.instance
  location         = each.value.location
  deletion_policy  = each.value.deletion_policy
  project          = each.value.project
  row_time_to_live = each.value.row_time_to_live

  dynamic "column_info" {
    for_each = each.value.column_info != null ? each.value.column_info : []
    content {
      column_index       = column_info.value.column_index
      column_type        = column_info.value.column_type
      key_column         = column_info.value.key_column
      mapped_column_path = column_info.value.mapped_column_path
      original_column    = column_info.value.original_column
      repeated_values    = column_info.value.repeated_values
    }
  }

  dynamic "scope_info" {
    for_each = each.value.scope_info != null ? [each.value.scope_info] : []
    content {
      data_access_scopes = scope_info.value.data_access_scopes
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

