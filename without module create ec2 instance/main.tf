provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "webserver" {
  ami = var.ami_value
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  associate_public_ip_address = var.public_ip
}