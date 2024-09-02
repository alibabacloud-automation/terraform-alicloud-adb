data "alicloud_adb_zones" "default" {}

data "alicloud_vpcs" "default" {
  name_regex = "^default-NODELETING$"
}
data "alicloud_vswitches" "default" {
  vpc_id  = data.alicloud_vpcs.default.ids.0
  zone_id = data.alicloud_adb_zones.default.ids.0
}

module "example" {
  source = "../.."

  category        = "Cluster"
  class           = "C8"
  description     = var.description
  node_count      = 2
  node_storage    = var.node_storage
  mode            = "reserver"
  cluster_version = "3.0"
  payment_type    = "PayAsYouGo"
  vswitch_id      = data.alicloud_vswitches.default.vswitches.0.id
  security_ips    = var.security_ips
  maintain_time   = var.maintain_time
  tags_created    = var.tags_created
  tags_for        = var.tags_for

}