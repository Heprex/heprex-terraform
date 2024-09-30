variable "my-map" {
  type = map
  default = {
      Name = "Jeffrex"
      Nickname = "Heprex"
  }
}

output "variable_value" {
  value = var.my-map
}