module "security-group_elb" {
  source  = "terraform-aws-modules/security-group/aws//modules/ssh"
  version = "4.17.2"
  # insert the 2 required variables here
  name        = "elb-sg"
  description = "Security group which is used as an argument in complete-sg"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["http-80-tcp"]
  ingress_with_cidr_blocks = [
    {
      from_port   = 81
      to_port     = 81
      protocol    = "tcp"
      description = "protocol for http"
      cidr_blocks = "0.0.0.0/0"
    },
  ]

  tags = local.common_tags
}
