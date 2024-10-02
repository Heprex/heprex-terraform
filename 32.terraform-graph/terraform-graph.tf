resource "aws_eip" "lb" {
  domain   = "vpc"
}

resource "aws_security_group" "example" {
  name        = "attribute-sg"
}

resource "aws_vpc_security_group_ingress_rule" "example" {
  security_group_id = aws_security_group.example.id

  cidr_ipv4   = "${aws_eip.lb.public_ip}/32"
  from_port   = 443
  ip_protocol = "tcp"
  to_port     = 443
}

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = "t2.micro"
}



/*

run
terraform graph

digraph G {
  rankdir = "RL";
  node [shape = rect, fontname = "sans-serif"];
  "aws_eip.lb" [label="aws_eip.lb"];
  "aws_instance.web" [label="aws_instance.web"];
  "aws_security_group.example" [label="aws_security_group.example"];
  "aws_vpc_security_group_ingress_rule.example" [label="aws_vpc_security_group_ingress_rule.example"];
  "aws_vpc_security_group_ingress_rule.example" -> "aws_eip.lb";
  "aws_vpc_security_group_ingress_rule.example" -> "aws_security_group.example";
}

after installing graphviz
brew install graphviz

terraform graph |  dot -Tpng >graph.png
*/