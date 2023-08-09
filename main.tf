provider "aws" {
  region = "us-east-1"

}

resource "aws_vpc" "actions" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "donnettech"
    team = "devops"

  }
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "donnetbuct"
    key    = Terraform.tfstate
    region = "us-east-1"
  }
}