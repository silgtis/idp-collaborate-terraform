variable "app_env" {
  description = "Environment name, ex: 'staging' or 'production'"
}

variable "app_name" {
  description = "Used in tagging resources. Recommend something like 'idp-acme'"
}

variable "aws_access_key_id" {}

variable "aws_region" {
  description = "Region to deploy in, ex: 'us-east-1'"
}

variable "aws_secret_access_key" {}

variable "db_name" {
  default = "idproot"
  description = "Default RDS database created. It is not used so leaving as default is fine."
}

variable "multi_az" {
  description = "Whether or not to create a Multi-AZ RDS instance. Values can be 'true' or 'false'"
}

variable "mysql_user" {
  default = "idproot"
  description = "Root mysql user name. It is not used so default is fine."
}

variable "skip_final_snapshot" {
  description = "Whether or not to skip taking a final snapshot when destroyed. Use 'false' to ensure a final snapshot is taken."
}

variable "tf_remote_cluster" {
  description = "Environment name in Terraform Enterprise for cluster"
}