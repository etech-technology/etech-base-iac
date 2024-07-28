module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.5.0"
  name = var.system_name
  ami = var.ami_id 
  create = var.create_instance
  instance_type          = var.instance_type
  key_name               = var.key_pair_name
  monitoring             = var.monitoring
  vpc_security_group_ids = ["var.vpc_security_group_ids"]
  subnet_id              = " "
  create = false

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
