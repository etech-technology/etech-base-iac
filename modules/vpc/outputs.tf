output "security_group_id" {
    value = aws_security_group.syssg.id 
}

output "subnet_id" {
  value = module.vpc.public_subnets
}