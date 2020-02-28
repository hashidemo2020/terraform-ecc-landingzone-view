resource "random_id" "random" {
  keepers = {
    uuid = uuid()
  }
  byte_length = 1024
}

resource "null_resource" "rotate" {
  triggers = {
    uuid_hex = random_id.random.hex
  }
}

/*
data "terraform_remote_state" "subnet" {
  backend = "remote" 
  
  config = {
    hostname = "app.terraform.io"
    organization = var.remote_organization
    token = var.token_org
    workspaces = {
      name = var.subnet_remote_workspace_name
    }
  }
}
*/
  
data "terraform_remote_state" "subnet" {
  backend = "atlas"

  config = {
    address = "https://app.terraform.io"
    name     = "${var.remote_organization}/${var.subnet_remote_workspace_name}"
    access_token    = var.token_org
  }
}
