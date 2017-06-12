data "terraform_remote_state" "broker" {
  backend = "atlas"

  config {
    name = "${var.tf_remote_broker}"
  }
}
