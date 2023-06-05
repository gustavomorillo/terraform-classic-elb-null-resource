
module "ec2_private_instance1" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.0.0"

  name = "${local.name}-${var.environment}"

  instance_type          = "t3.micro"
  ami                    = data.aws_ami.amazon_linux.id
  subnet_id              = element(module.vpc.private_subnets, 0)
  vpc_security_group_ids = [module.security-group-private-instance.security_group_id]
  user_data              = file("${path.module}/app1-install.sh")
  key_name               = "tf-key"
  tags                   = local.common_tags

  depends_on = [module.vpc, aws_key_pair.test_terraform]
}

module "ec2_private_instance2" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.0.0"

  name = "${local.name}-${var.environment}"

  instance_type          = "t3.micro"
  ami                    = data.aws_ami.amazon_linux.id
  subnet_id              = element(module.vpc.private_subnets, 1)
  vpc_security_group_ids = [module.security-group-private-instance.security_group_id]
  user_data              = file("${path.module}/app1-install.sh")
  key_name               = "tf-key"
  tags                   = local.common_tags

  depends_on = [module.vpc, aws_key_pair.test_terraform]
}
module "ec2_private_instance3" {

  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.0.0"

  name = "${local.name}-${var.environment}"

  instance_type          = "t3.micro"
  ami                    = data.aws_ami.amazon_linux.id
  subnet_id              = element(module.vpc.private_subnets, 0)
  vpc_security_group_ids = [module.security-group-private-instance.security_group_id]
  user_data              = file("${path.module}/app2-install.sh")
  key_name               = "tf-key"
  tags                   = local.common_tags



  depends_on = [module.vpc, aws_key_pair.test_terraform]
}
module "ec2_private_instance4" {

  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.0.0"

  name = "${local.name}-${var.environment}"

  instance_type          = "t3.micro"
  ami                    = data.aws_ami.amazon_linux.id
  subnet_id              = element(module.vpc.private_subnets, 1)
  vpc_security_group_ids = [module.security-group-private-instance.security_group_id]
  user_data              = file("${path.module}/app2-install.sh")
  key_name               = "tf-key"
  tags                   = local.common_tags



  depends_on = [module.vpc, aws_key_pair.test_terraform]
}
