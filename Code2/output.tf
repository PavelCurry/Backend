output "instance_public_ip" {
  value       = aws_lightsail_instance.l1
  description = "The public IPv4 address of the instance"

}

output "instance_private_ip" {
  value       = aws_lightsail_instance.l1
  description = "The private IPv4 address of the instance"
}