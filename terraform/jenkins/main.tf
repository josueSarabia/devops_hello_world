provider "aws" {
    region = "us-east-1"
}

variable "name" {
    description = "Name the instance on deploy"
}

resource "aws_instance" "devops_01_jenkins" {
    ami = "ami-08d4ac5b634553e16"
    instance_type = "t2.micro"
    key_name = "devops"

    tags = {
        Name = "${var.name}"
    }
}