data "terraform_remote_state" "elasticache" {
  backend = "atlas"

  config {
    name = "${var.tf_remote_elasticache}"
  }
}
