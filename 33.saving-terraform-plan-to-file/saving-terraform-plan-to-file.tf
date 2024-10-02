resource "local_file" "foo" {
  content  = "Hello World"
  filename = "terraform.txt"
}

/*

terraform plan -out=infra.plan
terraform apply infra.plan

terraform show infra.plan
terraform show -json infra.plan

terraform show -json infra.plan | jq

*/