variable "project" {
  type        = string
  description = "le nom du projet à init (ex : sales, hr, finance ...)"
}

variable "organization_name" {
  type        = string
  description = "le nom de votre organisation Github"
}

variable "members" {
  type = map(
    object({
      organization_role = string
      team_role         = string
    })
  )

  description = "les membres à rajouter a l'organisation et l'équipe projet sur GitHub"
}
