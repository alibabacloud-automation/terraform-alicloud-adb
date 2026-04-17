Alicloud ADB Terraform Module On Alibaba Cloud

terraform-alicloud-adb
---

English | [简体中文](README-CN.md)

Terraform module which creates ADB instance on Alibaba Cloud.

These types of resources are supported:

* [adb_db_cluster](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/adb_db_cluster)

----------------------

## Usage

<div style="display: block;margin-bottom: 40px;"><div class="oics-button" style="float: right;position: absolute;margin-bottom: 10px;">
  <a href="https://api.aliyun.com/terraform?source=Module&activeTab=document&sourcePath=terraform-alicloud-modules%3A%3Aadb&spm=docs.m.terraform-alicloud-modules.adb&intl_lang=EN_US" target="_blank">
    <img alt="Open in AliCloud" src="https://img.alicdn.com/imgextra/i1/O1CN01hjjqXv1uYUlY56FyX_!!6000000006049-55-tps-254-36.svg" style="max-height: 44px; max-width: 100%;">
  </a>
</div></div>


```hcl
module "example" {
  source      = "terraform-alicloud-modules/adb/alicloud"
  description = "Test new adb."
}
```

## Notes

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`. If you have not set them
  yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.212.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | >= 1.212.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [alicloud_adb_db_cluster.this](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/adb_db_cluster) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_category"></a> [category](#input\_category) | The specification of the category. | `string` | `"Cluster"` | no |
| <a name="input_class"></a> [class](#input\_class) | The specification of the class. | `string` | `"C8"` | no |
| <a name="input_cluster_version"></a> [cluster\_version](#input\_cluster\_version) | The specification of the cluster version. | `string` | `"3.0"` | no |
| <a name="input_description"></a> [description](#input\_description) | The name of a new description. | `string` | `""` | no |
| <a name="input_maintain_time"></a> [maintain\_time](#input\_maintain\_time) | The specification of the maintain time. | `string` | `"23:00Z-00:00Z"` | no |
| <a name="input_mode"></a> [mode](#input\_mode) | The specification of the mode. | `string` | `"reserver"` | no |
| <a name="input_node_count"></a> [node\_count](#input\_node\_count) | The specification of the node count. | `number` | `4` | no |
| <a name="input_node_storage"></a> [node\_storage](#input\_node\_storage) | The specification of the node storage. | `number` | `400` | no |
| <a name="input_payment_type"></a> [payment\_type](#input\_payment\_type) | The specification of the payment type. | `string` | `"PayAsYouGo"` | no |
| <a name="input_security_ips"></a> [security\_ips](#input\_security\_ips) | The specification of the security\_ips. | `list(string)` | <pre>[<br/>  "127.0.0.1"<br/>]</pre> | no |
| <a name="input_tags_created"></a> [tags\_created](#input\_tags\_created) | The specification of the tags created. | `string` | `""` | no |
| <a name="input_tags_for"></a> [tags\_for](#input\_tags\_for) | The specification of the tags for. | `string` | `""` | no |
| <a name="input_vswitch_id"></a> [vswitch\_id](#input\_vswitch\_id) | VSwitch variables, if vswitch\_id is empty, then the net\_type = classic. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this_adb_description"></a> [this\_adb\_description](#output\_this\_adb\_description) | ADB Cluster Description |
| <a name="output_this_adb_id"></a> [this\_adb\_id](#output\_this\_adb\_id) | ADB Cluster ID |
<!-- END_TF_DOCS -->

## Submit Issues

If you have any problems when using this module, please opening
a [provider issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new) and let us know.

## Authors

Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

## Reference

* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)