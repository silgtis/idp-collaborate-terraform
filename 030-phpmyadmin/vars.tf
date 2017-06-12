variable "app_env" {
  description = "Environment name, ex: 'staging' or 'production'"
}

variable "app_name" {
  default = "phpmyadmin"
  description = "Used in ECS service names and logs, best to leave as default."
}

variable "aws_access_key_id" {}

variable "aws_region" {
  description = "Region to deploy in, ex: 'us-east-1'"
}

variable "aws_secret_access_key" {}
variable "cloudflare_email" {}
variable "cloudflare_token" {}
variable "cloudflare_domain" {}

variable "idp_name" {
  description = "Short name of IdP for logs, something like 'acme'"
}

variable "logentries_account_key" {}

variable "pma_subdomain" {
  description = "Subdomain for phpmyadmin. Ex: 'acme-pma'"
}

variable "tf_remote_core" {
  description = "Environment name in Terraform Enterprise for core"
}
variable "tf_remote_cluster" {
  description = "Environment name in Terraform Enterprise for cluster"
}
variable "tf_remote_database" {
  description = "Environment name in Terraform Enterprise for database"
}
