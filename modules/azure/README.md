<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | ~> 2.48 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.100 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | ~> 2.48 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 3.100 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuread_group.ad_group](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/group) | resource |
| [azurerm_data_factory.adf](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory) | resource |
| [azurerm_key_vault.kv](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_role_assignment.ad_group_contributor_role](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [azurerm_subscription.primary](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azuread_members"></a> [azuread\_members](#input\_azuread\_members) | tableau contenant les utilisateurs membres du groupe AD projet créé | `list(string)` | n/a | yes |
| <a name="input_azuread_owners"></a> [azuread\_owners](#input\_azuread\_owners) | tableau contenant les utilisateurs owners du groupe AD projet créé | `list(string)` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | l’environnement du projet (dev, int, uat, prd ...) | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | la région géographique où sont localisées les ressources (weu, ne, us ...) | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | le nom du projet à init (ex : sales, hr, finance ...) | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->