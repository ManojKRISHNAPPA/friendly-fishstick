terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myinstance01" {
  ami           = "ami-06c68f701d8090592"
  instance_type = "t2.micro"
  count = "1"
  security_groups = ["default"]
  key_name = "vikas"

  tags = {
    Name = "Gafana-Server"
  }
}
resource "aws_instance" "myinstance02" {
  ami           = "ami-06c68f701d8090592"
  instance_type = "t2.micro"
  count = "1"
  security_groups = ["default"]
  key_name = "vikas"

  tags = {
    Name = "node-expoter-server"
  }
}
