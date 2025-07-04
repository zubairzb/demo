output "security_group_id_bastion" {
  value = aws_security_group.souq_bastion_sg.id
}
output "security_group_id_eks" {
  value = aws_security_group.souq_eks_sg.id
}
output "security_group_id_alb" {
  value = aws_security_group.souq_alb_sg.id
}
