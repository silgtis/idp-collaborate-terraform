data "terraform_remote_state" "ecr" {
  backend = "atlas"

  config {
    name = "${var.tf_remote_ecr}"
  }
}
