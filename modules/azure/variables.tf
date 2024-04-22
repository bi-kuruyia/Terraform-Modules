variable "project" {
  type        = string
  description = "le nom du projet à init (ex : sales, hr, finance ...)"
  default     = "finance"
}

variable "location" {
  type        = string
  description = "la région géographique où sont localisées les ressources (weu, ne, us ...)"
  default     = "weu"
}

variable "environment" {
  type        = string
  description = "l’environnement du projet (dev, int, uat, prd ...)"
  default     = "dev"
}

variable "azuread_owners" {
  type        = list(string)
  description = "tableau contenant les utilisateurs owners du groupe AD projet créé"

  default = [
    "c9e54d7d-b96b-42f1-b1cc-3484fd8a4c72",
    "1aa50c3d-4552-40f2-9aed-2395a218e5f0"
  ]
}

variable "azuread_members" {
  type        = list(string)
  description = "tableau contenant les utilisateurs membres du groupe AD projet créé"
}
