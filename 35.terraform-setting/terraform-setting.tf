
/*
terraform {
  required_version = "1.9.6"

  required_providers {
    aws = {
      version = "5.69.0"
      source = "hashicorp/aws"
    }
  }
}
*/

resource "aws_security_group" "sg_01" {
  name = "app_firewall"
}
