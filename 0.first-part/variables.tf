variable "ami" {
  description = "Default AMI"
  default = "ami-0e8fd5cc56e4d158c"
}



/*

variable "sg_ports" {
  type        = list(number)
  description = "list of ingress ports, from dynamic-blocks"
  default     = [8200, 8201,8300, 9200, 9500]
}


variable "iam_user" {
  description = "from load-order-and-semantics module"
  default = "demouser"
}

variable "region" {
  description = "from challenge-functions module"
  default = "ap-southeast-2"
}



variable "environment" {
  description = "from conditional-expressions module"
  default = "production"
}


variable "region" {
  description = "from conditional-expressions module"
  default = "ap-southeast-1"
}


variable "users" {
  description = "from count-index module"
  type = list
  default = ["heprex","bim","teddy","milabs","bibim"]
}

*/