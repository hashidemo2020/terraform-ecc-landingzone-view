output "services_subnet_id" {
  value = data.terraform_remote_state.subnet.outputs.services_subnet_id
}

output "database_subnet_id" {
  value = data.terraform_remote_state.subnet.outputs.database_subnet_id
}

output "services_subnet_id_v2" {
  value = data.terraform_remote_state.subnet.outputs.services_subnet_id
}

output "database_subnet_id_v2" {
  value = data.terraform_remote_state.subnet.outputs.database_subnet_id
}


#just for testing -test
output "uuid" {
  value = "${random_id.random.dec}"
}
