provider "aws" {
 # profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "ap-south-1"
  access_key = "AKIAZXDIRNJEQ3OX3VB2"
  secret_key = "Ba1pZ7ufDLljYQjMghDqUPK226aF2358EriCjs8O"
}

terraform {
    required_version = "~> 1.0"
    required_providers {
        aws = {
         source = "hashicorp/aws"
         version = "~> 3.0"

        }
    }
}

#provider "aws" {
 # profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
 # region  = "us-east-1"
#}

resource "aws_instance" "web-app" {
 ami = "ami-052cef05d01020f1d"
 instance_type = "t2.micro"
# availability_zone = "us-east-1b"
 tags = {
     Name = "webserver-01"
 }
}
