/*
 * Elasticache outputs
 */
output "cache_nodes" {
  value = ["${module.elasticache.cache_nodes}"]
}
output "cache_configuration_endpoint" {
  value = "${module.elasticache.cache_configuration_endpoint}"
}
output "cache_cluster_address" {
  value = "${module.elasticache.cache_cluster_address}"
}
