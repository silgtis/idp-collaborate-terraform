variable "app_env" {
  description = "Environment name, ex: 'staging' or 'production'"
}

variable "app_name" {
  description = "Used as a resource tag on Elasticache cluster. Recommend something like 'idp-acme'"
}

variable "aws_access_key_id" {}

variable "aws_region" {
  description = "Region to deploy in, ex: 'us-east-1'"
}

variable "aws_secret_access_key" {}

variable "tf_remote_cluster" {
  description = "Environment name in Terraform Enterprise for cluster"
}