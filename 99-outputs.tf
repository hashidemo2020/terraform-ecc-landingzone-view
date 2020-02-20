output "services_subnet_id" {
  value = data.terraform_remote_state.subnet.outputs.bu1_services_subnet_id_v1
}

output "database_subnet_id" {
  value = data.terraform_remote_state.subnet.outputs.bu1_database_subnet_id_v1
}

#just for testing -test
output "uuid" {
  value = "${random_id.random.dec}"
}
