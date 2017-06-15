module "phpmyadmin" {
  source = "github.com/silinternational/idp-in-a-box//terraform/030-phpmyadmin"
  app_name = "${var.app_name}"
  app_env = "${var.app_env}"
  idp_name = "${var.idp_name}"
  vpc_id = "${data.terraform_remote_state.cluster.vpc_id}"
  alb_https_listener_arn = "${data.terraform_remote_state.cluster.alb_https_listener_arn}"
  subdomain = "${var.pma_subdomain}"
  cloudflare_domain = "${var.cloudflare_domain}"
  rds_address = "${data.terraform_remote_state.database.rds_address}"
  ecs_cluster_id = "${data.terraform_remote_state.core.ecs_cluster_id}"
  ecsServiceRole_arn = "${data.terraform_remote_state.core.ecsServiceRole_arn}"
  alb_dns_name = "${data.terraform_remote_state.cluster.alb_dns_name}"
}