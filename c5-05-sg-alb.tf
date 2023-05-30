module "security-group_alb" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.17.2"
  # insert the 2 required variables here
  name        = "elb-sg"
  description = "Security group which is used as an argument in complete-sg"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["http-80-tcp"]
  egress_rules        = ["all-all"]


  tags = local.common_tags
}
