variable "aws_ami" {
  default = "ami-0f13a1efb26061f67"
  description = "Linux 2 Server"
}

variable "aws_ami_wordpress" {
  default = "ami-0d42e90eaa780ed9b"
  description = "Wordpress"
}

variable "aws_instanceType" {
  default = "t2.micro"
}

variable "sg_ports" {
  type          = list(number)
  description   = "list of ingress ports" 
  default       = [443,80,8080]
}