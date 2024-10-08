resource "aws_instance" "myec2" {
   ami = "ami-0e8fd5cc56e4d158c"
   instance_type = var.list[0]
}

variable "list" {
  type = list
  default = ["m5.large","m5.xlarge","t2.medium"]
}

variable "types" {
  type = map
  default = {
    us-east-1 = "t2.micro"
    us-west-2 = "t2.nano"
    ap-southeast-2 = "t2.small"
  }
}