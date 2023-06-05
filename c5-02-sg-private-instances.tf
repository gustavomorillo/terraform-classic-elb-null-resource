module "security-group-private-instance" {
  source  = "terraform-aws-modules/security-group/aws//modules/ssh"
  version = "4.17.2"
  # insert the 2 required variables here
  name        = "private-instance-sg"
  description = "Security group which is used as an argument in complete-sg"
  vpc_id      = module.vpc.vpc_id



  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  ingress_rules = ["ssh-tcp", "http-80-tcp"]
  # Egress Rule - all-all open
  egress_rules = ["all-all"]



  tags = local.common_tags
}
