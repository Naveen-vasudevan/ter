provider "aws" {
 # profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "ap-south-1"
  access_key = "AKIAZXDIRNJEQ3OX3VB2"
  secret_key = "Ba1pZ7ufDLljYQjMghDqUPK226aF2358EriCjs8O"
}


module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-052cef05d01020f1d"
  instance_type          = "t2.micro"
 # key_name               = "user1"
 # monitoring             = true
 # vpc_security_group_ids = ["sg-12345678"]
 # subnet_id              = "subnet-eddcdzz4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
