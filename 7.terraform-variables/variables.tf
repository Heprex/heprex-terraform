variable "vpn_ip" {
  description = "This is a VPN server in AWS"  
  default = "101.20.30.50/32"
}

variable app_port {
  default = 8080
}

variable "ssh_port" {
  default = 22
}

variable "ftp_port" {
  default = 21
}

