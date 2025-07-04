variable "cluster_name" {
  description = "Name of the EKS cluster"
}

variable "kubernetes_version" {
  description = "Kubernetes version for the EKS cluster"
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs for the EKS cluster"
  type        = list(string)
}

variable "security_group_id_eks" {
  description = "Security group ID for the EKS cluster"
}

variable "node_group_name" {
  description = "Name of the EKS node group"
}

variable "node_role_arn" {
  description = "ARN of the IAM role for the EKS node group"
}

variable "node_desired_size" {
  description = "Desired number of nodes in the EKS node group"
}

variable "node_min_size" {
  description = "Minimum number of nodes in the EKS node group"
}

variable "node_max_size" {
  description = "Maximum number of nodes in the EKS node group"
}

variable "cluster_role_arn" {
  description = "The ARN of the IAM role for the EKS cluster"
  type        = string
}
