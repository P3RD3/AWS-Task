terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {

  ami = "ami-08d70e59c07c61a3a"
  count = var.number_of_ec2instances
  instance_type = var.ec2_instance_type
  
  tags = {
    Name = "${var.ec2_instance_name}-${count.index+1}"
  }
}