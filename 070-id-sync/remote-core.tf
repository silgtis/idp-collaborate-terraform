data "terraform_remote_state" "core" {
  backend = "atlas"

  config {
    name = "${var.tf_remote_core}"
  }
}
