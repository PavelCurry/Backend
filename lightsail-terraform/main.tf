terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region = "ca-central-1"
}
#creating the lightsail instance
resource "aws_lightsail_instance" "lightsail_instance" {
  name              = "Pavel_Server"
  availability_zone = "ca-central-1a"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_1_0"
  key_pair_name     = "test"
} 