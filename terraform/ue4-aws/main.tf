resource "aws_instance" "ue4-build-server" {
   ami             = "${data.aws_ami.ue4-build-image}"
   instance_type   = "${var.ue4-build-server-type}"
   user_data = "../../scripts/user-data.ps1"
   tags = {
       Name = "ue4-build-server-${data.aws_region.current_region}"
   }
}
