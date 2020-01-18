variable "access_key" {
}

variable "secret_key" {
}

variable "region" {
}

provider "aws" {
  version    = "~> 2.43"
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

module "ue4-aws" {
  source                = "./ue4-aws"
  ue4-build-server-type = "t2.medium"
}

