resource "aws_instance" "myec2" {
   ami = var.ami
   instance_type = "t2.micro"
}

resource "aws_instance" "newec2" {
   ami = var.ami
   instance_type = "t2.micro"
}

resource "aws_instance" "heprex" {
   ami = var.ami
   instance_type = "t2.micro"
}

