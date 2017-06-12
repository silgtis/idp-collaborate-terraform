module "cluster" {
  source = "github.com/silinternational/idp-in-a-box//terraform/010-cluster"
  app_name = "${var.app_name}"
  app_env = "${var.app_env}"
  aws_instance = "${var.aws_instance}"
  aws_region = "${var.aws_region}"
  aws_zones = ["${var.aws_zones}"]
  cert_domain_name = "${var.cert_domain_name}"
  ecs_ami_id = "${data.terraform_remote_state.core.ecs_ami_id}"
  ecs_cluster_name = "${data.terraform_remote_state.core.ecs_cluster_name}"
  ecs_instance_profile_id = "${data.terraform_remote_state.core.ecs_instance_profile_id}"
}