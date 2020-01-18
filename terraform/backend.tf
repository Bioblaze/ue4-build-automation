terraform {
  backend "s3" {
    bucket = "ue4-build-tf-state"
    key    = "terraform.tfstate"
    region = "us-east-1"
    profile  = "test_sdk"
    dynamodb_table = "terraform-locks"
  }
}

