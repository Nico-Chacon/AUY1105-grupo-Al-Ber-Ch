variable "region" {
  description = "Región por defecto de AWS"
  default     = "us-east-1"
}

variable "availability_zone" {
  description = "Zona de disponibilidad para la subred"
  default     = "us-east-1a"
}

variable "vpc_cidr" {
  description = "CIDR para la VPC"
  default     = "10.1.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR para la subred pública"
  default     = "10.1.1.0/24"
}

variable "my_ip" {
  description = "IP pública para acceso SSH"
  default     = "51.8.155.17/32"
}

variable "ami_id" {
  description = "AMI de Ubuntu 24.04 LTS"
  default     = "ami-05cf1e9f73fbad2e2"
}

variable "instance_type" {
  default     = "t2.micro"
  description = "Tipo de instancia EC2 requerida por la politica de seguridad AUY1105"
}