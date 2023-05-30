# module "elb_http" {
#   source  = "terraform-aws-modules/elb/aws"
#   version = "~> 2.0"

#   name = "elb-classic"

#   subnets         = [module.vpc.public_subnets[0], module.vpc.public_subnets[1]]
#   security_groups = [module.security-group_elb.security_group_id]


#   listener = [
#     {
#       instance_port     = 80
#       instance_protocol = "HTTP"
#       lb_port           = 80
#       lb_protocol       = "HTTP"
#     },
#     {
#       instance_port     = 80
#       instance_protocol = "http"
#       lb_port           = 81
#       lb_protocol       = "http"
#     },
#   ]

#   health_check = {
#     target              = "HTTP:80/"
#     interval            = 30
#     healthy_threshold   = 2
#     unhealthy_threshold = 2
#     timeout             = 5
#   }
#   // ELB attachments
#   number_of_instances = 2
#   instances           = [module.ec2_private_instance.id, module.ec2_private_instance2.id]

#   tags = {
#     Owner       = "user"
#     Environment = "dev"
#   }
# }

