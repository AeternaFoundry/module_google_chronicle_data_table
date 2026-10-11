output "chronicle_data_tables_id" {
  description = "Map of id values across all chronicle_data_tables, keyed the same as var.chronicle_data_tables except keys with no id are omitted"
  value       = { for k, v in google_chronicle_data_table.chronicle_data_tables : k => v.id if v.id != null && length(v.id) > 0 }
}
output "chronicle_data_tables_approximate_row_count" {
  description = "Map of approximate_row_count values across all chronicle_data_tables, keyed the same as var.chronicle_data_tables except keys with no approximate_row_count are omitted"
  value       = { for k, v in google_chronicle_data_table.chronicle_data_tables : k => v.approximate_row_count if v.approximate_row_count != null }
}
output "chronicle_data_tables_column_info" {
  description = "Map of column_info values across all chronicle_data_tables, keyed the same as var.chronicle_data_tables except keys with no column_info are omitted"
  value       = { for k, v in google_chronicle_data_table.chronicle_data_tables : k => v.column_info if v.column_info != null && length(v.column_info) > 0 }
}
output "chronicle_data_tables_create_time" {
  description = "Map of create_time values across all chronicle_data_tables, keyed the same as var.chronicle_data_tables except keys with no create_time are omitted"
  value       = { for k, v in google_chronicle_data_table.chronicle_data_tables : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "chronicle_data_tables_data_table_id" {
  description = "Map of data_table_id values across all chronicle_data_tables, keyed the same as var.chronicle_data_tables except keys with no data_table_id are omitted"
  value       = { for k, v in google_chronicle_data_table.chronicle_data_tables : k => v.data_table_id if v.data_table_id != null && length(v.data_table_id) > 0 }
}
output "chronicle_data_tables_data_table_uuid" {
  description = "Map of data_table_uuid values across all chronicle_data_tables, keyed the same as var.chronicle_data_tables except keys with no data_table_uuid are omitted"
  value       = { for k, v in google_chronicle_data_table.chronicle_data_tables : k => v.data_table_uuid if v.data_table_uuid != null && length(v.data_table_uuid) > 0 }
}
output "chronicle_data_tables_deletion_policy" {
  description = "Map of deletion_policy values across all chronicle_data_tables, keyed the same as var.chronicle_data_tables except keys with no deletion_policy are omitted"
  value       = { for k, v in google_chronicle_data_table.chronicle_data_tables : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "chronicle_data_tables_description" {
  description = "Map of description values across all chronicle_data_tables, keyed the same as var.chronicle_data_tables except keys with no description are omitted"
  value       = { for k, v in google_chronicle_data_table.chronicle_data_tables : k => v.description if v.description != null && length(v.description) > 0 }
}
output "chronicle_data_tables_display_name" {
  description = "Map of display_name values across all chronicle_data_tables, keyed the same as var.chronicle_data_tables except keys with no display_name are omitted"
  value       = { for k, v in google_chronicle_data_table.chronicle_data_tables : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "chronicle_data_tables_instance" {
  description = "Map of instance values across all chronicle_data_tables, keyed the same as var.chronicle_data_tables except keys with no instance are omitted"
  value       = { for k, v in google_chronicle_data_table.chronicle_data_tables : k => v.instance if v.instance != null && length(v.instance) > 0 }
}
output "chronicle_data_tables_location" {
  description = "Map of location values across all chronicle_data_tables, keyed the same as var.chronicle_data_tables except keys with no location are omitted"
  value       = { for k, v in google_chronicle_data_table.chronicle_data_tables : k => v.location if v.location != null && length(v.location) > 0 }
}
output "chronicle_data_tables_name" {
  description = "Map of name values across all chronicle_data_tables, keyed the same as var.chronicle_data_tables except keys with no name are omitted"
  value       = { for k, v in google_chronicle_data_table.chronicle_data_tables : k => v.name if v.name != null && length(v.name) > 0 }
}
output "chronicle_data_tables_project" {
  description = "Map of project values across all chronicle_data_tables, keyed the same as var.chronicle_data_tables except keys with no project are omitted"
  value       = { for k, v in google_chronicle_data_table.chronicle_data_tables : k => v.project if v.project != null && length(v.project) > 0 }
}
output "chronicle_data_tables_row_time_to_live" {
  description = "Map of row_time_to_live values across all chronicle_data_tables, keyed the same as var.chronicle_data_tables except keys with no row_time_to_live are omitted"
  value       = { for k, v in google_chronicle_data_table.chronicle_data_tables : k => v.row_time_to_live if v.row_time_to_live != null && length(v.row_time_to_live) > 0 }
}
output "chronicle_data_tables_row_time_to_live_update_time" {
  description = "Map of row_time_to_live_update_time values across all chronicle_data_tables, keyed the same as var.chronicle_data_tables except keys with no row_time_to_live_update_time are omitted"
  value       = { for k, v in google_chronicle_data_table.chronicle_data_tables : k => v.row_time_to_live_update_time if v.row_time_to_live_update_time != null && length(v.row_time_to_live_update_time) > 0 }
}
output "chronicle_data_tables_rule_associations_count" {
  description = "Map of rule_associations_count values across all chronicle_data_tables, keyed the same as var.chronicle_data_tables except keys with no rule_associations_count are omitted"
  value       = { for k, v in google_chronicle_data_table.chronicle_data_tables : k => v.rule_associations_count if v.rule_associations_count != null }
}
output "chronicle_data_tables_rules" {
  description = "Map of rules values across all chronicle_data_tables, keyed the same as var.chronicle_data_tables except keys with no rules are omitted"
  value       = { for k, v in google_chronicle_data_table.chronicle_data_tables : k => v.rules if v.rules != null && length(v.rules) > 0 }
}
output "chronicle_data_tables_scope_info" {
  description = "Map of scope_info values across all chronicle_data_tables, keyed the same as var.chronicle_data_tables except keys with no scope_info are omitted"
  value       = { for k, v in google_chronicle_data_table.chronicle_data_tables : k => one(v.scope_info) if v.scope_info != null && length(v.scope_info) > 0 }
}
output "chronicle_data_tables_update_source" {
  description = "Map of update_source values across all chronicle_data_tables, keyed the same as var.chronicle_data_tables except keys with no update_source are omitted"
  value       = { for k, v in google_chronicle_data_table.chronicle_data_tables : k => v.update_source if v.update_source != null && length(v.update_source) > 0 }
}
output "chronicle_data_tables_update_time" {
  description = "Map of update_time values across all chronicle_data_tables, keyed the same as var.chronicle_data_tables except keys with no update_time are omitted"
  value       = { for k, v in google_chronicle_data_table.chronicle_data_tables : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

