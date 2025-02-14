provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "this" {
  ami                     = "ami-053a45fff0a704a47"
  instance_type           = "t2.micro"
  subnet_id = "subnet-0c83983aa39650d53"
  key_name = "Appserver-key"
}