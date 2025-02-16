output "public_ip_address" {
  value = aws_instance.appserver.public_ip
}