data "aws_region" "current_region" {}

data "aws_ami" "ue4-build-image" {
    most_recent = true
    executable_users = ["self"]
    filter {
        name = "owner-alias"
        values = ["amazon"]
    }
    filter {
        name = "name"
        values = ["amzn-ami-vpc-nat*"]
    }
    owners = ["self"]
}
