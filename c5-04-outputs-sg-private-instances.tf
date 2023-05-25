output "security_group_arn_sg_private_instance" {
  description = "The ARN of the security group"
  value       = module.security-group-private-instance.security_group_arn
}

output "security_group_id_sg_private_instance" {
  description = "The ID of the security group"
  value       = module.security-group-private-instance.security_group_id
}

output "security_group_vpc_id_sg_private_instance" {
  description = "The VPC ID"
  value       = module.security-group-private-instance.security_group_vpc_id
}

output "security_group_owner_id_sg_private_instance" {
  description = "The owner ID"
  value       = module.security-group-private-instance.security_group_owner_id
}

output "security_group_name_sg_private_instance" {
  description = "The name of the security group"
  value       = module.security-group-private-instance.security_group_name
}

output "security_group_description_sg_private_instance" {
  description = "The description of the security group"
  value       = module.security-group-private-instance.security_group_description
}
