variable "alerts_email" {
  description = "Email address to send alerts to"
}

variable "api_subdomain" {
  description = "Subdomain for password api, something like: 'acme-pw-api'"
}

variable "app_env" {
  description = "Environment name, ex: 'staging' or 'production'"
}

variable "app_name" {
  default = "pw-manager"
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

variable "db_name" {
  default = "pwmanager"
  description = "Database name, can be changed but default is fine."
}

variable "from_email" {
  description = "Email address to send emails from"
}

variable "from_name" {
  description = "Name to send emails from"
}

variable "idp_name" {
  description = "Short name of IdP for logs, something like 'acme'"
}

variable "logentries_account_key" {}

variable "logo_url" {
  description = "URL to where IdP logo should link to on PW UI"
}

variable "mailer_host" {
  description = "SMTP hostname"
}

variable "mailer_password" {
  description = "SMTP user password"
}

variable "mailer_username" {
  description = "SMTP username"
}

variable "mysql_user" {
  default = "pwmanager"
}
variable "recaptcha_key" {}
variable "recaptcha_secret" {}

variable "support_email" {
  description = "Email address for end user support, displayed on PW UI"
}

variable "ui_subdomain" {
  description = "Subdomain for PW UI, something like 'acme-pw'"
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
variable "tf_remote_ecr" {
  description = "Environment name in Terraform Enterprise for ecr"
}
variable "tf_remote_broker" {
  description = "Environment name in Terraform Enterprise for broker"
}
