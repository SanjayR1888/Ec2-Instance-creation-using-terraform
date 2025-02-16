terraform {
  backend "s3" {
    bucket = "sanjay-s3-demo-xyz"
    key    = "Files/terraform.tfstate"
    region = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
