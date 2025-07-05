resource "aws_eks_fargate_profile" "demo_fargate_profile" {
  cluster_name           = aws_eks_cluster.demoEKS.name
  fargate_profile_name   = "demo-fargate-profile"
  pod_execution_role_arn = var.fargate_pod_execution_role_arn
  subnet_ids             = var.public_subnet_ids

  selector {
    namespace = var.fargate_namespace
  }

  tags = {
    Project = "Souq"
  }

}

