variable "env" {
  type = string
  description = ""
}

variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "instance_ami" {
  type        = string
  description = ""
  default     = "ami-0005e0cfe09cc9050"
}

variable "instance_type" {
  type        = string
  description = ""
}

variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    Name    = "Instancia criada pelo Terraform"
    Project = "Curso AWS Terraform"
  }
}