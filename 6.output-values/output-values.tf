provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_eip" "lb" {
  domain   = "vpc"
}

output "public-ip" {
  value = aws_eip.lb
}