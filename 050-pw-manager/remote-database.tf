data "terraform_remote_state" "database" {
  backend = "atlas"

  config {
    name = "${var.tf_remote_database}"
  }
}
