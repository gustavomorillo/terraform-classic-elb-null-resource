resource "aws_eip" "ec2_bastion_host" {
  instance = module.ec2_bastion_host.id
  vpc      = true

  depends_on = [module.vpc, module.ec2_bastion_host]
}
