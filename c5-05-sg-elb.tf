module "security-group_elb" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.17.2"
  # insert the 2 required variables here
  name        = "elb-sg"
  description = "Security group which is used as an argument in complete-sg"
  vpc_id      = module.vpc.vpc_id

  ingress_rules = ["http-80-tcp", "https-443-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  # Egress Rule - all-all open
  egress_rules = ["all-all"]

  tags = local.common_tags
}
