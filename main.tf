provider "aws" {
    version = "~> 2.0"
    region = "us-east-1"
}

resource "aws_instance" "dev" {
    count = 3
    ami = "ami-052efd3df9dad4825"
    instance_type = "t2.micro"
    key_name = "terraform-aws"
    tags = {
        Name = "dev ${count.index}"
    }
}

