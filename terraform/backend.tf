terraform {
  backend "s3" {
    bucket = "ue4-build-tf-state-$${var.region}"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

