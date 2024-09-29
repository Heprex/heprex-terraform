provider "aws"{
    region = "ap-southeast-2"
}

resource "aws_eip" "lb" {
  domain   = "vpc"
}

resource "aws_instance" "web" {
  ami           = "ami-0e8fd5cc56e4d158c"
  instance_type = "t2.micro"
}