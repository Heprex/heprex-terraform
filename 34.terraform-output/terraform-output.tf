resource "aws_iam_user" "lb" {
    name = "iamuser.${count.index}"
    count = 3
    path = "/system/"
  
}

output "iam_names" {
  value = aws_iam_user.lb[*].name
}

output "iam_arn" {
  value = aws_iam_user.lb[*].arn
}

/*

terraform output iam_names                                                                                                                                      ─╯
[
  "iamuser.0",
  "iamuser.1",
  "iamuser.2",
]

terraform output iam_arn                                                                                                                                        ─╯
[
  "arn:aws:iam::559050204503:user/system/iamuser.0",
  "arn:aws:iam::559050204503:user/system/iamuser.1",
  "arn:aws:iam::559050204503:user/system/iamuser.2",
]

*/