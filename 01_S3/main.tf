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
  region = "us-east-1"
}

resource "aws_s3_bucket" "s3basic" {
  bucket = "s3-basic-terraform"

  tags = {
    Name  = "Bucket Curso Terraform Udemy"
    Owner = "Rodrigo Figueira"
  }

}
