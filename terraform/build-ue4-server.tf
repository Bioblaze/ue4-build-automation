variable "access_key" {}
variable "secret_key" {}

provider "aws" {
  version = "~> 2.43"
  region = "us-east-1"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}


module "ue4-aws" {
  source = "./ue4-aws"
  ue4-build-server-type = "t2.medium"
}
