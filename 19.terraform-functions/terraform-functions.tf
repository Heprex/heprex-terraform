resource "aws_iam_user" "this" {
  name = "demo-heprex-user"
}

resource "aws_iam_user_policy" "lb_ro" {
  name = "demo-user-policy"
  user = aws_iam_user.this.name

  policy = file("./random-file.txt")
}


#output "aws_iam_user" {
#  value = aws_iam_user_policy.lb_ro.policy
#}

#Function Catergories | Function Available
#Numeric Function     | abs, ciel, floor, max, min
#String Function      | concat, replace, split, tolower, toupper
#Collection Function  | element, keys, length, merge, sort
#Filesystem Function  | file, filebase64, dirname