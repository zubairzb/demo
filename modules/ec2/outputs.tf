output "instance_id" {
  value = aws_instance.bastion_host.id
}

output "public_ip" {
  value = aws_instance.bastion_host.public_ip
}
