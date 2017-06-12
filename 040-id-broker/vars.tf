variable "app_env" {
  description = "Environment name, ex: 'staging' or 'production'"
}

variable "app_name" {
  default = "id-broker"
  description = "Used in ECS service names and logs, best to leave as default."
}

variable "aws_access_key_id" {}

variable "aws_region" {
  description = "Region to deploy in, ex: 'us-east-1'"
}

variable "aws_secret_access_key" {}

variable "broker_subdomain" {
  description = "Subdomain for broker, something like: 'acme-broker'"
}

variable "cloudflare_email" {}
variable "cloudflare_token" {}
variable "cloudflare_domain" {}

variable "db_name" {
  default = "idbroker"
  description = "Database name, can be changed but default is fine."
}

variable "ecs_desired_count" {
  description = "Number of tasks to run, recommended: '2'"
}

variable "idp_name" {
  description = "Short name of IdP for logs, something like 'acme'"
}

variable "ldap_admin_password" {}
variable "ldap_admin_username" {}

variable "ldap_base_dn" {
  description = "Base DN for LDAP search and bind. Ex: 'dc=acme,dc=org'"
}

variable "ldap_domain_controllers" {
  description = "Hostname for LDAP server. Ex: 'ldap.acme.org'"
}

variable "ldap_use_ssl" {
  description = "Whether or not to use SSL"
}

variable "ldap_use_tls" {
  description = "Whether or not to use TLS"
}

variable "logentries_account_key" {}

variable "mailer_host" {
  description = "SMTP hostname"
}

variable "mailer_password" {
  description = "SMTP user password"
}

variable "mailer_username" {
  description = "SMTP username"
}

variable "migrate_pw_from_ldap" {
  description = "Whether or not to attempt to migrate password from LDAP if not present in database"
}

variable "mysql_user" {
  default = "idbroker"
}

variable "notification_email" {
  description = "Email address to send notifications to"
}

variable "ssl_policy" {
  type = "string"
  default = "ELBSecurityPolicy-TLS-1-2-2017-01"
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
