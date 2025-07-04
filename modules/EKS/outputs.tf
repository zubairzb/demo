output "cluster_name" {
  value = aws_eks_cluster.souqEKS.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.souqEKS.endpoint
}

output "node_group_name" {
  value = aws_eks_node_group.souq_node_group.node_group_name
}

output "node_group_arn" {
  value = aws_eks_node_group.souq_node_group.arn
}

output "node_role_arn" {
  value = aws_eks_node_group.souq_node_group.node_role_arn
}
