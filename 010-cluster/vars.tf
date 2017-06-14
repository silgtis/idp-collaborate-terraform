variable "app_env" {
  description = "Environment name, ex: 'staging' or 'production'"
}

variable "app_name" {
  description = "Used in tagging resources. Recommend something like 'idp-acme'"
}

variable "aws_access_key_id" {}

variable "aws_instance" {
  type = "map"
  description = "A map of configuration information for EC2 instances. Expected keys are 'instance_type', 'volume_size', and 'instance_count'"
}

variable "aws_region" {
  description = "Region to deploy in, ex: 'us-east-1'"
}

variable "aws_secret_access_key" {}

variable "aws_zones" {
  type = "list"
  description = "A list of zones to spread instances across. Ex: [\"us-east-1c\", \"us-east-1d\", \"us-east-1e\"]"
}

variable "logentries_account_key" {}

variable "cert_domain_name" {
  description = "Domain name for Amazon Certificate Manager certificate to use. Should be a wildcard."
}

variable "tf_remote_core" {
  description = "Environment name in Terraform Enterprise for core"
}