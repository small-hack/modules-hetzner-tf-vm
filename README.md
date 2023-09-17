# Hetzner Terraform Infra

This repo manages VleermuisTech infrstructure on Hetzner Cloud.

- https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | 1.42.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | 1.42.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcloud_server.control_plane](https://registry.terraform.io/providers/hetznercloud/hcloud/1.42.0/docs/resources/server) | resource |
| [hcloud_server.monitoring](https://registry.terraform.io/providers/hetznercloud/hcloud/1.42.0/docs/resources/server) | resource |


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_hcloud_token"></a> [hcloud\_token](#input\_hcloud\_token) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_control_plane_ipv4_address"></a> [control\_plane\_ipv4\_address](#output\_control\_plane\_ipv4\_address) | n/a |
| <a name="output_monitoring_ipv4_address"></a> [monitoring\_ipv4\_address](#output\_monitoring\_ipv4\_address) | n/a |
<!-- END_TF_DOCS -->
