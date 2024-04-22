<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_azure"></a> [azure](#module\_azure) | ../azure | n/a |
| <a name="module_github"></a> [github](#module\_github) | ../github | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azure_location"></a> [azure\_location](#input\_azure\_location) | la région géographique où sont localisées les ressources (weu, ne, us ...) | `string` | `"weu"` | no |
| <a name="input_azuread_owners"></a> [azuread\_owners](#input\_azuread\_owners) | tableau contenant les utilisateurs owners du groupe AD projet créé | `list(string)` | <pre>[<br>  "c9e54d7d-b96b-42f1-b1cc-3484fd8a4c72",<br>  "1aa50c3d-4552-40f2-9aed-2395a218e5f0"<br>]</pre> | no |
| <a name="input_environment"></a> [environment](#input\_environment) | l’environnement du projet (dev, int, uat, prd ...) | `string` | `"dev"` | no |
| <a name="input_gh_organization_name"></a> [gh\_organization\_name](#input\_gh\_organization\_name) | le nom de votre organisation Github | `string` | `"bi-kuruyia"` | no |
| <a name="input_members"></a> [members](#input\_members) | les membres à rajouter au projet | <pre>list(<br>    object({<br>      gh_username     = string<br>      gh_orga_role    = string<br>      gh_team_role    = string<br>      azure_object_id = string<br>    })<br>  )</pre> | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | le nom du projet à init (ex : sales, hr, finance ...) | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->