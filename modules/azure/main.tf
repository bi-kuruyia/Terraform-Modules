terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.100"
    }

    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.48"
    }
  }
}

data "azurerm_client_config" "current" {}
data "azurerm_subscription" "primary" {}
data "azuread_client_config" "current" {}

resource "azurerm_resource_group" "rg" {
  name     = "rg-${var.project}-${var.location}-${var.environment}"
  location = "West Europe"
}

resource "azurerm_data_factory" "adf" {
  name                = "adf-${var.project}-${var.location}-${var.environment}-01"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  identity {
    type          = "SystemAssigned"
    identity_ids  = []
  }

  dynamic "github_configuration" {
    for_each = var.environment == "dev" ? [1] : []

    content {
      account_name    = "TestingThings404"
      branch_name     = "master"
      repository_name = "SpiceCraft.Finance"
      root_folder     = "/DataFactory/adf-${var.project}-${var.location}-${var.environment}-01"
    }
  }
}

resource "azurerm_key_vault" "kv" {
  name                        = "kv${var.project}${var.location}${var.environment}01"
  location                    = azurerm_resource_group.rg.location
  resource_group_name         = azurerm_resource_group.rg.name
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  sku_name                    = "standard"
}

resource "azuread_group" "ad_group" {
  display_name      = "GRP_${upper(var.project)}_${upper(var.environment)}"
  security_enabled  = true
  owners            = var.azuread_owners
  members           = var.azuread_members
}

resource "azurerm_role_assignment" "ad_group_contributor_role" {
  scope                = data.azurerm_subscription.primary.id
  role_definition_name = "Contributor"
  principal_id         = azuread_group.ad_group.object_id
}
