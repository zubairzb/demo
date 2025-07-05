output "cluster_role_arn" {
  value = aws_iam_role.souq_eks_cluster.arn
}

output "nodegroup_role_arn" {
  value = aws_iam_role.souq_eks_nodegroup.arn
}

output "fargate_role_arn" {
  value = aws_iam_role.fargate_pod_execution.arn
}

