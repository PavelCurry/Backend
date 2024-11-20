resource "aws_lightsail_instance" "l1" {
  name              = "my-server"
  availability_zone = "ca-central-1a"
  blueprint_id      = "amazon_linux_2"
  key_pair_name     = "test"
  user_data         = "sudo yum install httpd -y && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>This is my first Terraform project</h1>' > /var/www/html/index.html"
  bundle_id         = "nano_3_0"
  tags = {
    env  = "dev"
    team = "devops"
  }
}
resource "aws_iam_group" "developers" {
  name = "cloudteam"

}

resource "aws_iam_user" "lb" {
  name = "u5bt2024"
  path = "/system/"

  tags = {
    tag-key = "tag-value"
  }
}

