#export TF_VAR_instance_type=m5.large



#echo $TF_VAR_instance_type

provider "aws" {
  region     = "us-west-2"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}

variable "instance_type" {}

resource "aws_instance" "myec2" {
   ami = "ami-0e670eb768a5fc3d4"
   instance_type = var.instance_type
}