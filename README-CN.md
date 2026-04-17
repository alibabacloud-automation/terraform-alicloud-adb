Alicloud ADB Terraform Module On Alibaba Cloud

terraform-alicloud-adb
---

[English](README.md) | 简体中文

本 Module 用于在阿里云的 VPC 下创建一个分析型数据库。

本 Module 支持创建以下资源:

* [分析型数据库](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/adb_db_cluster)

----------------------

## 用法

```hcl
module "example" {
  source      = "terraform-alicloud-modules/adb/alicloud"
  description = "Test new adb."
}
```

## 注意事项

* 本 Module 使用的 AccessKey 和 SecretKey 可以直接从 `profile` 和 `shared_credentials_file`
  中获取。如果未设置，可通过下载安装 [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) 后进行配置。

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

## 提交问题

如果在使用该 Terraform Module
的过程中有任何问题，可以直接创建一个 [Provider Issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new)，我们将根据问题描述提供解决方案。

## 作者

Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

## 相关

* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)