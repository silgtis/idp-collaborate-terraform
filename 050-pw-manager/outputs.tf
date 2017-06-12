output "ui_bucket" {
  value = "${module.pwmanager.ui_bucket}"
}
output "cloudfront_distribution_id" {
  value = "${module.pwmanager.cloudfront_distribution_id}"
}
output "ui_hostname" {
  value = "${module.pwmanager.ui_hostname}"
}
output "api_hostname" {
  value = "${module.pwmanager.api_hostname}"
}
output "db_pwmanager_user" {
  value = "${module.pwmanager.db_pwmanager_user}"
}
