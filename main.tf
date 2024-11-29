terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
    region     = "eu-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Example AMI ID for Amazon Linux 2 (choose the right one for your region)
  instance_type = "t2.micro"                # Free tier eligible instance type

  tags = {
    Name = "MyInstance"
  }
}