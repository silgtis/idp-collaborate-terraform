/*
 * IAM outputs
 */
output "cduser_access_key_id" {
  value = "${module.core.cduser_access_key_id}"
}
output "cduser_access_key_secret" {
  value = "${module.core.cduser_access_key_secret}"
}
output "cduser_arn" {
  value = "${module.core.cduser_arn}"
}
output "cduser_username" {
  value = "${module.core.cduser_username}"
}

/*
 * ECS cluster outputs
 */
output "ecs_ami_id" {
  value = "${module.core.ecs_ami_id}"
}
output "ecs_cluster_id" {
  value = "${module.core.ecs_cluster_id}"
}
output "ecs_cluster_name" {
  value = "${module.core.ecs_cluster_name}"
}
output "ecs_instance_profile_id" {
  value = "${module.core.ecs_instance_profile_id}"
}
output "ecsInstanceRole_arn" {
  value = "${module.core.ecsInstanceRole_arn}"
}
output "ecsServiceRole_arn" {
  value = "${module.core.ecsServiceRole_arn}"
}
