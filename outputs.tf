output "this_adb_id" {
  description = "ADB Cluster ID"
  value       = alicloud_adb_db_cluster.this.id
}

output "this_adb_description" {
  description = "ADB Cluster Description"
  value       = alicloud_adb_db_cluster.this.description
}