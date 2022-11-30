output "salt" {
  value = resource.random_id.salt.hex
}

output "my_ip" {
  value = trimspace(data.http.workstation_public_ip.response_body)
}

output "now" {
  value = resource.time_static.current_time.id
}

output "random_password" {
  value = resource.random_password.pass.result
}

output "key_pair" {
  value = try(module.key_pair[0].key_pair, null)
}

output "key_pair_private_pem" {
  value = try(module.key_pair[0].key_pair_private_pem, null)
}

output "current_user_arn" {
  value = data.aws_caller_identity.current.arn
}

output "current_user_name" {
  value = split("/", data.aws_caller_identity.current.arn)[1] // arn:aws:iam::xxxxxxxxx:user/name
}

output "tags" {
  value = {
    terraform_workspace = terraform.workspace
    vendor              = "Imperva"
    product             = "EDSF"
    terraform           = "true"
    environment         = "demo"
    creation_timestamp  = resource.time_static.current_time.id
  }
}