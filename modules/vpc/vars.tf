variable "vpc_name" {
  default = "my-vpc"
}

variable "cidr" {
  description = "list of cidr blocks"
  type = string
  default = "10.0.0.0/16"
}

variable "azs" {
  description = "azs to be use"
  type = list(string)
  default = []
}