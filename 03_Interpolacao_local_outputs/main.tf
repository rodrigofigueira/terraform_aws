terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "myS3" {
  bucket = "${random_pet.bucket.id}-${var.environment}"
  tags = var.tagsBucket
}