module "vpc" {
  source         = "./modules/VPC"
  vpc_name       = var.vpc_name
  vpc_cidr_block = var.vpc_cidr_block
  private_cidr_block_1 = var.private_cidr_block_1
  private_cidr_block_2 = var.private_cidr_block_2
  public_cidr_block_1  = var.public_cidr_block_1
  public_cidr_block_2  = var.public_cidr_block_2
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
}

module "iam" {
  source = "./modules/IAM"
  cluster_role_name   = var.cluster_role_name
  nodegroup_role_name = var.nodegroup_role_name
}

module "eks" {
  source = "./modules/EKS"
  cluster_name          = var.cluster_name
  kubernetes_version    = var.kubernetes_version
  public_subnet_ids     = module.vpc.public_subnet_ids
  cluster_role_arn      = module.iam.cluster_role_arn
  security_group_id_eks = [module.security_group.security_group_id_eks]
  node_group_name       = var.node_group_name
  node_role_arn         = module.iam.nodegroup_role_arn
  node_desired_size     = var.node_desired_size
  node_min_size         = var.node_min_size
  node_max_size         = var.node_max_size
}

module "ec2" {
  source             = "./modules/ec2"
  instance_type      = var.instance_type
  ami                = var.ami
  subnet_id          = module.vpc.public_subnet_ids[0]
  security_group_ids = [module.security_group.security_group_id_bastion]
  key_pair_name      = var.key_pair_name
}
