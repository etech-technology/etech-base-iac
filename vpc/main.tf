module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "5.8.0"

  name = var.vpc_name
  cidr = var.cidr

  azs             = var.azs
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}

resource "aws_security_group" "syssg" {
  name   = "sg-demo"
  vpc_id = module.vpc.id

  ingress = []
  egress  = []
}