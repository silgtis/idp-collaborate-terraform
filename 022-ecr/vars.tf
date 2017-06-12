variable "app_env" {
  description = "Environment name, ex: 'staging' or 'production'"
}

variable "aws_access_key_id" {}

variable "aws_region" {
  description = "Region to deploy in, ex: 'us-east-1'"
}

variable "aws_secret_access_key" {}
variable "cloudflare_email" {}
variable "cloudflare_token" {}

variable "idp_name" {
  description = "Short name of IdP for logs and as a prefix in ECR repos, Ex: 'acme'"
}

variable "logentries_account_key" {}

variable "tf_remote_core" {
  description = "Environment name in Terraform Enterprise for core"
}