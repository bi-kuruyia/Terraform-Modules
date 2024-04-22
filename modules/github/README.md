<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 6.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | 6.2.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_membership.members](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/membership) | resource |
| [github_repository.project_repo](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository_collaborators.project_repo_collaborators](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_collaborators) | resource |
| [github_team.project_team](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team) | resource |
| [github_team_membership.project_team_members](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_membership) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_organization_members"></a> [organization\_members](#input\_organization\_members) | les membres à rajouter a l'organisation GitHub | `map(string)` | n/a | yes |
| <a name="input_organization_name"></a> [organization\_name](#input\_organization\_name) | le nom de votre organisation Github | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | le nom du projet à init (ex : sales, hr, finance ...) | `string` | n/a | yes |
| <a name="input_team_members"></a> [team\_members](#input\_team\_members) | les membres à rajouter a l'équipe projet sur GitHub | `map(string)` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->