variable "app_env" {
  description = "Environment name, ex: 'staging' or 'production'"
}

variable "app_name" {
  default = "id-sync"
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

variable "id_store_adapter" {
  description = "Currently supported options: 'insite' or 'googlesheets'"
}

variable "id_store_config" {
  type = "map"
  description = "A map of configuration data to pass into id-sync as env vars, keys should start with 'ID_STORE_CONFIG_'"
}

variable "idp_name" {
  description = "Short name of IdP for logs, something like 'acme'"
}

variable "logentries_account_key" {}
variable "recaptcha_key" {}
variable "recaptcha_secret" {}

variable "sync_subdomain" {
  description = "Something like 'acme-sync'"
}

variable "tf_remote_core" {
  description = "Environment name in Terraform Enterprise for core"
}
variable "tf_remote_cluster" {
  description = "Environment name in Terraform Enterprise for cluster"
}
variable "tf_remote_ecr" {
  description = "Environment name in Terraform Enterprise for ecr"
}
variable "tf_remote_broker" {
  description = "Environment name in Terraform Enterprise for broker"
}