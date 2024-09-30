resource "aws_instance" "myec2" {
    ami = var.ami
    instance_type = "t2.micro"
    count = 3

    tags = {
      Name = "payments-system-${count.index}"
    }
}

#resource "aws_iam_user" "this" {
#  name = "payments-user-${count.index}"
#  count = 3
#}

resource "aws_iam_user" "that" {
  name = var.users[count.index]
  count = 3
}

output "random" {
  value = aws_iam_user.that.*.name
}