provider "aws" {
  region = "ap-southeast-2"

}

resource "aws_iam_user" "demouser" {
  name = "heprex-demo-user"
}