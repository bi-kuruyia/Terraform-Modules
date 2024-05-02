terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }

    azuread = {
      source = "hashicorp/azuread"
    }

    github = {
      source = "integrations/github"
    }
  }
}

module "azure" {
  source = "../azure"

  project         = var.project
  location        = var.azure_location
  environment     = var.environment
  azuread_owners  = var.azuread_owners
  azuread_members = [for m in var.members : m.azure_object_id]

  providers = {
    azurerm = azurerm
    azuread = azuread
  }
}

module "github" {
  source = "../github"

  project           = var.project
  organization_name = var.gh_organization_name

  members = tomap({
    for m in var.members : m.gh_username => {
      "organization_role" : m.gh_orga_role
      "team_role" : m.gh_team_role
    }
  })

  providers = {
    github = github
  }
}
