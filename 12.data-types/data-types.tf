
resource "aws_instance" "web" {
  ami           = "ami-0e8fd5cc56e4d158c"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-06dc9a32ccca99a14","sg-042530a0fa6210611"]
}