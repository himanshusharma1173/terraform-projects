terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  required_version = ">= 1.13.1"
}

provider "aws" {
  region  = "us-east-2"
}

resource "aws_instance" "first_app_server" {
  ami           = "ami-0cfde0ea8edd312d4"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}

