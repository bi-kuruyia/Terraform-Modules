variable "project" {
  type        = string
  description = "le nom du projet à init (ex : sales, hr, finance ...)"
}

variable "organization_name" {
  type        = string
  description = "le nom de votre organisation Github"
}

variable "organization_members" {
  type        = map(string)
  description = "les membres à rajouter a l'organisation GitHub"
}

variable "team_members" {
  type        = map(string)
  description = "les membres à rajouter a l'équipe projet sur GitHub"
}
