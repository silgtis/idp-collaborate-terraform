module "elasticache" {
  source = "github.com/silinternational/idp-in-a-box//terraform/021-elasticache"
  security_group_ids = ["${data.terraform_remote_state.cluster.vpc_default_sg_id}"]
  subnet_ids = ["${data.terraform_remote_state.cluster.private_subnet_ids}"]
  availability_zones = ["${data.terraform_remote_state.cluster.aws_zones}"]
  app_name = "${var.app_name}"
  app_env = "${var.app_env}"
}