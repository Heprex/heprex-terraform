variable "my-list" {
  type = list(number)
}

#resource "aws_instance" "web" {
#  ami           = "ami-123"
#  instance_type = "t3.micro"
#  vpc_security_group_ids = ["sg-1234","sg-5678"]
#}