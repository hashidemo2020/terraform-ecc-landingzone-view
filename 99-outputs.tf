locals {
  outputs = data.terraform_remote_state.subnet.outputs
}

output "services_subnet_id" {
  value = lookup(local.outputs, "${var.bu_name}_services_subnet_id_v1")
}

output "database_subnet_id" {
  value = lookup(local.outputs, "${var.bu_name}_database_subnet_id_v1")
}

#just for testing -test
output "uuid" {
  value = "${random_id.random.dec}"
}
