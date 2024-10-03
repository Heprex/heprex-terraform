resource "aws_security_group" "remote-exec" {
  name        = "security-group"
  description = "Managed from Terraform"
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.remote-exec.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.remote-exec.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_egress_rule" "allow_https" {
  security_group_id = aws_security_group.remote-exec.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}


resource "aws_instance" "heprex" {
  ami             = var.ami
  instance_type   = "t2.micro"
  security_groups = [aws_security_group.remote-exec.name]
  key_name        = "terraform-key"

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("./terraform-key.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum -y install nginx",
      "sudo systemctl start nginx"
    ]

  }
}