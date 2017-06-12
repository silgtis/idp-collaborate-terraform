data "terraform_remote_state" "cluster" {
  backend = "atlas"

  config {
    name = "${var.tf_remote_cluster}"

  }
}
