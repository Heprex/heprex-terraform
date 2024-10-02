
resource "aws_instance" "myec2" {
  ami           = var.ami
  instance_type = t2.mirco
  sky = "blue"
}


/*

terraform validate also runs behind terraform plan

*/