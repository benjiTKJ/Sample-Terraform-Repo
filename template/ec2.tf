resource "aws_instance" "myec2" {
  ami               = var.aws_ami_wordpress
  instance_type     = var.aws_instanceType
  key_name          = "TestingLaunchJavaWebApp"
  security_groups   = [aws_security_group.myec2_sg.name]
  tags = {
      Name          = "Terraform-ec2"
      Enviroment    = "Prod"
  }

  #user_data = "${file("wordpress-setup.sh")}"
}

resource "aws_default_vpc" "main" {
  tags = {
    Name = "Main"
  }
}


