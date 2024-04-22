variable "project" {
  type        = string
  description = "le nom du projet à init (ex : sales, hr, finance ...)"
}

variable "gh_organization_name" {
  type        = string
  description = "le nom de votre organisation Github"
  default     = "bi-kuruyia"
}

variable "azure_location" {
  type        = string
  description = "la région géographique où sont localisées les ressources (weu, ne, us ...)"
  default     = "weu"
}

variable "environment" {
  type        = string
  description = "l’environnement du projet (dev, int, uat, prd ...)"
  default     = "dev"
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

  default = [
    "c9e54d7d-b96b-42f1-b1cc-3484fd8a4c72",
    "1aa50c3d-4552-40f2-9aed-2395a218e5f0"
  ]
}
