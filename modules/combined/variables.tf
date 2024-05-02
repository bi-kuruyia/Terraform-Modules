variable "project" {
  type        = string
  description = "le nom du projet à init (ex : sales, hr, finance ...)"
}

variable "gh_organization_name" {
  type        = string
  description = "le nom de votre organisation Github"
}

variable "azure_location" {
  type        = string
  description = "la région géographique où sont localisées les ressources (weu, ne, us ...)"
}

variable "environment" {
  type        = string
  description = "l’environnement du projet (dev, int, uat, prd ...)"
}

variable "members" {
  type = list(
    object({
      gh_username     = string
      gh_orga_role    = string
      gh_team_role    = string
      azure_object_id = string
    })
  )

  description = "les membres à rajouter au projet"
}

variable "azuread_owners" {
  type        = list(string)
  description = "tableau contenant les utilisateurs owners du groupe AD projet créé"
}
