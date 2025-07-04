variable "cluster_role_name" {
  description = "Name for the EKS cluster IAM role"
  type        = string
}

variable "nodegroup_role_name" {
  description = "Name for the EKS nodegroup IAM role"
  type        = string
}
