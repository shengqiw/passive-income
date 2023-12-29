terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.31"
    }
  }

  required_version = ">= 1.6.6"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "shen-test-ec2" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"

  tags = {
    Name = "shen-test"
  }
}