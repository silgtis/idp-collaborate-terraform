/*
 * VPC outputs
 */
output "aws_zones" {
  value = ["${module.cluster.aws_zones}"]
}
output "cloudflare_sg_id" {
  value = "${module.cluster.cloudflare_sg_id}"
}
output "db_subnet_group_name" {
  value = "${module.cluster.db_subnet_group_name}"
}
output "nat_gateway_ip" {
  value = "${module.cluster.nat_gateway_ip}"
}
output "private_subnet_ids" {
  value = ["${module.cluster.private_subnet_ids}"]
}
output "public_subnet_ids" {
  value = ["${module.cluster.public_subnet_ids}"]
}
output "vpc_default_sg_id" {
  value = "${module.cluster.vpc_default_sg_id}"
}
output "vpc_id" {
  value = "${module.cluster.vpc_id}"
}

/*
 * Application load balancer outputs
 */
output "alb_arn" {
  value = "${module.cluster.alb_arn}"
}
output "alb_default_tg_arn" {
  value = "${module.cluster.alb_default_tg_arn}"
}
output "alb_dns_name" {
  value = "${module.cluster.alb_dns_name}"
}
output "alb_https_listener_arn" {
  value = "${module.cluster.alb_https_listener_arn}"
}
output "alb_id" {
  value = "${module.cluster.alb_id}"
}
output "wildcard_cert_arn" {
  value = "${module.cluster.wildcard_cert_arn}"
}

/*
 * Logentries outputs
 */
output "logentries_set_id" {
  value = "${module.cluster.logentries_set_id}"
}
