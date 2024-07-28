variable "system_name" {
    description = "name of the ec2 instance"
    type = string
    default = "demo-remote"
  
}

variable "instance_type" {
    default = "t2.micro"
  
}

variable "key_pair_name" {
    default = "user1"
  
}

variable "monitoring" {
    description = "monitoring config for the server"
    type = bool
    default = true
  
}

variable "ami_id" {
    description = "ami of the instance"
    type = string
    default = "ami-00db8dadb36c9815e" 
}

variable "create_instance" {
  description = "condition to create the instance"
  type = bool
  default = true
}

variable "subnet_id" {
 default = null
}
variable "vpc_security_group_ids" {
default = []
}
