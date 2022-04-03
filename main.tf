provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "shipSafe_client" {
  ami             = var.ami
  key_name        = var.key_name
  instance_type   = var.instance_type
  security_groups = ["shipSafe_client-sec"]
  tags = {
    "Name" = "ship_safe_client"
  }
}

resource "aws_security_group" "shipSafe_client_sec" {
  name = "shipSafe_client-sec"

  ingress = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = [var.kkodes_home_ip]
    },
    {
      from_port   = 3000
      to_port     = 3000
      protocol    = "tcp"
      cidr_blocks = [var.kkodes_home_ip]
    }
  ]

  egress = {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = [var.kkodes_home_ip]
  }

  tags = {
    "Name" = "shipSafe_client"
  }
}

resource "aws_eip" "shipSafe_client_eip" {
  vpc      = true
  instance = aws_instance.shipSafe_client.id
  tags = {
    "Name" = "shipSafe_client_eip"
  }
}
