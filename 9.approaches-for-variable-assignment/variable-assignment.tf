resource "aws_instance" "myec2" {
   ami = "ami-0e8fd5cc56e4d158c"
   instance_type = var.instance_type
}