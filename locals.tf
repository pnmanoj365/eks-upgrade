locals {

  name_prefix = "${var.application_name}-${var.env}"

  application = {
    id           = "APP-xxxxx"
    rating       = "Medium"
    billing_mode = "PROVISIONED"
  }

  common_tags = {
    environment = var.env
    managed-by  = "terraform"
  }

}