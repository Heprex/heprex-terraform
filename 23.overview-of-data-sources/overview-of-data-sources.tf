provider "aws" {
    region = "ap-southeast-2"
}

data "aws_instances" "example" {}