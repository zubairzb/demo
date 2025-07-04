resource "aws_eks_cluster" "souqEKS" {
  name     = var.cluster_name
  role_arn = var.cluster_role_arn
  version  = var.kubernetes_version

  vpc_config {
    subnet_ids         = var.public_subnet_ids
    security_group_ids = var.security_group_id_eks
  }

  tags = {
    Project = "Souq"
  }
}
