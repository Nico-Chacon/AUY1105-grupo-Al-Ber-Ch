output "instance_id" {
  description = "ID de la instancia EC2 creada"
  value       = aws_instance.AUY1105-duocapp-ec2.id
}

output "instance_public_ip" {
  description = "IP pública de la instancia EC2"
  value       = aws_instance.AUY1105-duocapp-ec2.public_ip
}

output "vpc_id" {
  description = "ID de la VPC creada"
  value       = aws_vpc.AUY1105-duocapp-vpc.id
}

output "subnet_id" {
  description = "ID de la subred pública creada"
  value       = aws_subnet.AUY1105-duocapp-subnet.id
}
