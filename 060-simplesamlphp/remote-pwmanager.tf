data "terraform_remote_state" "pwmanager" {
  backend = "atlas"

  config {
    name = "${var.tf_remote_pwmanager}"
  }
}
