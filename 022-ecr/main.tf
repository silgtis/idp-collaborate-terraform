module "ecr" {
  source = "github.com/silinternational/idp-in-a-box//terraform/022-ecr"
  idp_name = "${var.idp_name}"
  app_env = "${var.app_env}"
  ecsInstanceRole_arn = "${data.terraform_remote_state.core.ecsInstanceRole_arn}"
  ecsServiceRole_arn = "${data.terraform_remote_state.core.ecsServiceRole_arn}"
  cd_user_arn = "${data.terraform_remote_state.core.cduser_arn}"
}