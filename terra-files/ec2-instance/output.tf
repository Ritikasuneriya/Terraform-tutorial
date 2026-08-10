output "ec2_instance_ip" {
    value = aws_instance.my-ec2.public_ip
  
}

output "ec2_instance_dns" {
    value = aws_instance.my-ec2.public_dns
  
}

output "security_grout_id" {
    value = aws_security_group.terra-security.id
  
}

