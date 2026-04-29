
provider "aws" {
  region = var.region
}

resource "aws_vpc" "AUY1105-duocapp-vpc" {
  cidr_block = var.vpc_cidr
}

resource "aws_subnet" "AUY1105-duocapp-subnet" {
  vpc_id            = aws_vpc.AUY1105-duocapp-vpc.id
  cidr_block        = var.subnet_cidr
  availability_zone = var.availability_zone
}

resource "aws_security_group" "AUY1105-duocapp-sg" {
  vpc_id      = aws_vpc.AUY1105-duocapp-vpc.id
  name        = "AUY1105-duocapp-sg"
  description = "Permite solo acceso SSH desde mi IP"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.my_ip]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "AUY1105-duocapp-ec2" {
  ami                    = var.ami_id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.AUY1105-duocapp-subnet.id
  vpc_security_group_ids = [aws_security_group.AUY1105-duocapp-sg.id]

  tags = {
    Name = "AUY1105-duocapp-ec2"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.AUY1105-duocapp-vpc.id
}

resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.AUY1105-duocapp-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

resource "aws_route_table_association" "rta" {
  subnet_id      = aws_subnet.AUY1105-duocapp-subnet.id
  route_table_id = aws_route_table.rt.id
}
