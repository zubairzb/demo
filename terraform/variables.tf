# variables.tf

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "private_cidr_block_1" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "private_cidr_block_2" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_cidr_block_1" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_cidr_block_2" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS Cluster"
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
}

variable "cluster_role_name" {
  description = "IAM role name for EKS cluster"
  type        = string
}

variable "nodegroup_role_name" {
  description = "IAM role name for EKS nodegroup"
  type        = string
}

variable "node_group_name" {
  description = "Name of the EKS node group"
  type        = string
}

variable "node_desired_size" {
  description = "Desired number of worker nodes"
  type        = number
}

variable "node_min_size" {
  description = "Minimum number of worker nodes"
  type        = number
}

variable "node_max_size" {
  description = "Maximum number of worker nodes"
  type        = number
}

variable "node_instance_type" {
  description = "EC2 instance type for the EKS node group"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ami" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "key_pair_name" {
  description = "Key pair name for EC2 instance"
  type        = string
}
