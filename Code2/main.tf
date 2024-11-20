resource "aws_lightsail_instance" "l1" {
  name              = "dev-server"
  availability_zone = "us-east-1a"
  blueprint_id      = "ubuntu_20_04"
  bundle_id         = "medium_1_0"
  user_data         = file("user-data.sh")
  tags = {
    env  = "dev"
    team = "devops"
  }
}