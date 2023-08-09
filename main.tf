provider "aws" {
  region = "us-east-1"

}

resource "aws_vpc" "actions" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name        = "donnettech"
    team        = "devops"
    Environment = "prod"
    Division    = "HR"

  }
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0" # Update the version to the latest compatible version
    }
  }

  backend "s3" {
    bucket = "donnetbucket"      # Replace this with the name of your S3 bucket
    key    = "terraform.tfstate" # The name of the state file in the bucket
    region = "us-east-1"         # Change this to your desired AWS region for the bucket
    # Optional: specify a DynamoDB table for state locking (recommended for production)
    # dynamodb_table = "terraform-state-lock"
  }
}
