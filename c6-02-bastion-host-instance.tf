
module "ec2_bastion_host" {
  depends_on = [module.vpc, aws_key_pair.test_terraform]
  source     = "terraform-aws-modules/ec2-instance/aws"
  version    = "5.0.0"

  name = "${local.name}-${var.environment}"

  instance_type          = "t3.micro"
  ami                    = data.aws_ami.amazon_linux.id
  subnet_id              = element(module.vpc.public_subnets, 0)
  vpc_security_group_ids = [module.security-group_ssh.security_group_id]
  key_name               = "tf-key"

  tags = local.common_tags
}


