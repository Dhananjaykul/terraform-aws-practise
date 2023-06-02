terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
// main.tf
provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "aws_ec2_test" {
  count         = 4
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformTestServerInstance"
  }
  }
# resource "aws_s3_bucket" "devops" {
#   bucket = "my-tf-test-bucket-chatrapati"

#   tags = {
#     Name        = "My bucket"
#   }
# }
