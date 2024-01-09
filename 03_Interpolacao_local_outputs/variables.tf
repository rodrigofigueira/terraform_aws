variable "environment" {
  type = string
  description = ""
}

variable "bucketName" {
  type = string
  description = "Nome do Bucket"
  default = "s3-basic-terraform"
}

variable "region" {
  type = string
  description = "Região do Bucket"
  default = "us-east-1"
}

variable "tagsBucket" {
  type = map(string)
  description = "Tags do Bucket"
  default = {
    Name = "Terraform Udemy"
    Owner = "Rodrigo Figueira"
  }
}