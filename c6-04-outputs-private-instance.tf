output "ec2_private_instance_host_public_dns" {
  description = "The public DNS name assigned to the instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC"
  value       = module.ec2_private_instance.public_dns
}

output "ec2_private_instance_host_public_ip" {
  description = "The public IP address assigned to the instance, if applicable. NOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use `public_ip` as this field will change after the EIP is attached"
  value       = module.ec2_private_instance.public_ip
}

output "ec2_private_instance_host_private_ip" {
  description = "The public IP address assigned to the instance, if applicable. NOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use `public_ip` as this field will change after the EIP is attached"
  value       = module.ec2_private_instance.private_ip
}

output "ec2_private_instance_host_private2_ip" {
  description = "The public IP address assigned to the instance, if applicable. NOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use `public_ip` as this field will change after the EIP is attached"
  value       = module.ec2_private_instance2.private_ip
}

output "ec2_private_instance2_host_public_dns" {
  description = "The public DNS name assigned to the instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC"
  value       = module.ec2_private_instance2.public_dns
}

output "ec2_private_instance2_host_public_ip" {
  description = "The public IP address assigned to the instance, if applicable. NOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use `public_ip` as this field will change after the EIP is attached"
  value       = module.ec2_private_instance2.public_ip
}

output "ec2_private_instance_id" {
  description = "The ID of the private instance Host"
  value       = module.ec2_private_instance.id
}

output "ec2_private_instance2_id" {
  description = "The ID of the instance 2 instance Host"
  value       = module.ec2_private_instance2.id
}



