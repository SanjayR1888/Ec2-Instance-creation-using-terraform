provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "sanjay" {
  ami = "ami-053a45fff0a704a47"
  instance_type = "t2.micro"
  subnet_id = "subnet-0c83983aa39650d53"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "sanjay-s3-demo-xyz"
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

}