module "database" {
  source = "github.com/silinternational/idp-in-a-box//terraform/020-database"
  app_name = "${var.app_name}"
  app_env = "${var.app_env}"
  db_name = "${var.db_name}"
  multi_az = "${var.multi_az}"
  mysql_user = "${var.mysql_user}"
  subnet_group_name = "${data.terraform_remote_state.cluster.db_subnet_group_name}"
  availability_zone = "${data.terraform_remote_state.cluster.aws_zones[0]}"
  security_groups = ["${data.terraform_remote_state.cluster.vpc_default_sg_id}"]
  skip_final_snapshot = "${var.skip_final_snapshot}"
}