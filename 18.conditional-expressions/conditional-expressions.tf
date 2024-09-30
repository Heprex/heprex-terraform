#resource "aws_instance" "myec2" {
#    ami = var.ami
##    instance_type = var.environment != "development" ? "t2.micro" : "m5.large" 
#}

resource "aws_instance" "myec2" {
    ami = var.ami
    instance_type = var.environment == "production" && var.region == "ap-southeast-2" ? "m5.large" : "t2.micro"

}

output "instance_type" {
  value = aws_instance.myec2.instance_type
}


