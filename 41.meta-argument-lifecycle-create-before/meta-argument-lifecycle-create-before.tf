
resource "aws_instance" "myec2" {
    ami = var.ami
    instance_type = "t2.micro"

    tags = {
        Name = "HelloEarth"
    }

    lifecycle {
      create_before_destroy = true
    }
}