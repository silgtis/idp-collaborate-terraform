output "rds_arn" {
  value = "${module.database.rds_arn}"
}
output "rds_address" {
  value = "${module.database.rds_address}"
}
output "mysql_user" {
  value = "${module.database.mysql_user}"
}
output "mysql_pass" {
  value = "${module.database.mysql_pass}"
}
output "db_idbroker_pass" {
  value = "${module.database.db_idbroker_pass}"
}
output "db_pwmanager_pass" {
  value = "${module.database.db_pwmanager_pass}"
}
output "db_ssp_pass" {
  value = "${module.database.db_ssp_pass}"
}
