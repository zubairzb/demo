output "eks_cluster_name" {
  value = module.eks.cluster_name
}

output "eks_node_group_name" {
  value = module.eks.node_group_name
}

output "eks_node_group_role_arn" {
  value = module.eks.node_role_arn
}

output "eks_cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "monogo_host_instance_id" {
  value = module.ec2.instance_id
}

output "EC2_IP" {
  value = module.ec2.public_ip
}
