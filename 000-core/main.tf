/*
 * Core module creates IAM users, the ECS cluster, etc.
 */
module "core" {
  source = "github.com/silinternational/idp-in-a-box//terraform/000-core"
  app_name = "${var.app_name}"
  app_env = "${var.app_env}"
}