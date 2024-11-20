# Creating the lightsail instance

resource "aws_lightsail_instance" "l1" {
  name              = "MyServer"
  availability_zone = "us-east-1a"
  blueprint_id      = "centos_stream_9"
  bundle_id         = "nano_1_0"
  user_data         = file("user_data.sh")
  tags = {
    name = "Server1"
    env  = "Dev"
  }
}