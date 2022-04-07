resource "aws_security_group" "myec2_sg" {
  name        = "myec2_sg"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_default_vpc.main.id

  dynamic "ingress" {
      for_each = var.sg_ports
      iterator = port
      content {
          from_port     = port.value
          to_port       = port.value
          protocol      = "tcp"
          cidr_blocks   = ["0.0.0.0/0"]
      }
    }
  
  ingress {
      from_port         = 22
      to_port           = 22
      protocol          = "tcp"
      cidr_blocks       = ["0.0.0.0/0"]   
  
  }
  ingress {
      from_port         = 3306
      to_port           = 3306
      protocol          = "tcp"
      cidr_blocks       = ["0.0.0.0/0"]   

  }
    
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "myec2_security_group"
  }
}
