
output "ec2_bastion_host_eip" {
  description = "The public EIP of the instance Bastion Host"
  value       = aws_eip.ec2_bastion_host.public_ip
}

