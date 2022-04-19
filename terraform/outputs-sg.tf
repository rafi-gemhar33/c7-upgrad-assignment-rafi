
output "public_bastion_sg_group_id" {
  description = "public bastion sg group id"
  value       = module.public_bastion_sg.this_security_group_id
}

output "private_sg_group_id" {
  description = "private sg group id"
  value       = module.private_sg.this_security_group_id
}
