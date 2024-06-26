terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.2"
    }
  }
}

resource "github_membership" "members" {
  for_each = var.members

  username = each.key
  role     = each.value.organization_role
}

resource "github_team" "project_team" {
  name = "${var.project} Team"
}

resource "github_team_membership" "project_team_members" {
  for_each = var.members

  team_id  = github_team.project_team.id
  username = each.key
  role     = each.value.team_role
}

resource "github_repository" "project_repo" {
  name = "${var.organization_name}.Project.${var.project}"
}

resource "github_repository_collaborators" "project_repo_collaborators" {
  repository = github_repository.project_repo.name

  user {
    permission = "admin"
    username   = local.admin_username
  }

  team {
    permission = "push"
    team_id    = github_team.project_team.slug
  }
}
