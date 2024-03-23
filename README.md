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
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | n/a |
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | 1.42.1 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |
| <a name="provider_template"></a> [template](#provider\_template) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_record.this](https://registry.terraform.io/providers/hashicorp/cloudflare/latest/docs/resources/record) | resource |
| [cloudflare_tunnel.this](https://registry.terraform.io/providers/hashicorp/cloudflare/latest/docs/resources/tunnel) | resource |
| [cloudflare_tunnel_config.this](https://registry.terraform.io/providers/hashicorp/cloudflare/latest/docs/resources/tunnel_config) | resource |
| [hcloud_floating_ip.this](https://registry.terraform.io/providers/hetznercloud/hcloud/1.42.1/docs/resources/floating_ip) | resource |
| [hcloud_floating_ip_assignment.this](https://registry.terraform.io/providers/hetznercloud/hcloud/1.42.1/docs/resources/floating_ip_assignment) | resource |
| [hcloud_server.this](https://registry.terraform.io/providers/hetznercloud/hcloud/1.42.1/docs/resources/server) | resource |
| [random_id.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |
| [random_pet.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) | resource |
| [template_file.this](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudflare_account_id"></a> [cloudflare\_account\_id](#input\_cloudflare\_account\_id) | n/a | `string` | n/a | yes |
| <a name="input_cloudflare_zone_id"></a> [cloudflare\_zone\_id](#input\_cloudflare\_zone\_id) | n/a | `string` | n/a | yes |
| <a name="input_github_username"></a> [github\_username](#input\_github\_username) | n/a | `string` | n/a | yes |
| <a name="input_hcloud_token"></a> [hcloud\_token](#input\_hcloud\_token) | n/a | `any` | n/a | yes |
| <a name="input_hetzner_ssh_key_name"></a> [hetzner\_ssh\_key\_name](#input\_hetzner\_ssh\_key\_name) | n/a | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | n/a | yes |
| <a name="input_server_type"></a> [server\_type](#input\_server\_type) | n/a | `any` | n/a | yes |
| <a name="input_ssh_pub_key"></a> [ssh\_pub\_key](#input\_ssh\_pub\_key) | n/a | `any` | n/a | yes |
| <a name="input_tunnel_name"></a> [tunnel\_name](#input\_tunnel\_name) | n/a | `string` | n/a | yes |
| <a name="input_username"></a> [username](#input\_username) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_floating_address"></a> [floating\_address](#output\_floating\_address) | Public IP address for the instance |
| <a name="output_ipv4_address"></a> [ipv4\_address](#output\_ipv4\_address) | Public IP address for the instance |
<!-- END_TF_DOCS -->
