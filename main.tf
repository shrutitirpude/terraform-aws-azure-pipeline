provider "aws" {
  region = "us-east-1"  # Change to your preferred AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Example AMI ID for Amazon Linux 2 (choose the right one for your region)
  instance_type = "t2.micro"                # Free tier eligible instance type

  tags = {
    Name = "MyInstance"
  }
}