resource "aws_eks_node_group" "souq_node_group" {
  cluster_name    = aws_eks_cluster.souqEKS.name
  node_group_name = var.node_group_name
  node_role_arn   = var.node_role_arn
  subnet_ids      = var.public_subnet_ids

  scaling_config {
    desired_size = var.node_desired_size
    min_size     = var.node_min_size
    max_size     = var.node_max_size
  }

  tags = {
    Project = "Souq"
  }
}
