
resource "aws_iam_user" "lb" {
  name = "demo-user.${count.index}"
  count = 3
  path = "/system/"
}

output "arns" {
  value = aws_iam_user.lb[*].arn
}


output "zipmap" {
  value = zipmap(aws_iam_user.lb[*].name, aws_iam_user.lb[*].arn)
}


/*

Outputs:

arns = [
  "arn:aws:iam::559050204503:user/system/demo-user.0",
  "arn:aws:iam::559050204503:user/system/demo-user.1",
  "arn:aws:iam::559050204503:user/system/demo-user.2",
]
zipmap = {
  "demo-user.0" = "arn:aws:iam::559050204503:user/system/demo-user.0"
  "demo-user.1" = "arn:aws:iam::559050204503:user/system/demo-user.1"
  "demo-user.2" = "arn:aws:iam::559050204503:user/system/demo-user.2"
}


*/