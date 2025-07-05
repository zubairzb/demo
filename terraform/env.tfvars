vpc_name             = "demo-VPC"
vpc_cidr_block       = "172.18.0.0/16"
private_cidr_block_1 = "172.18.0.0/18"
private_cidr_block_2 = "172.18.64.0/18"
public_cidr_block_1  = "172.18.128.0/18"
public_cidr_block_2  = "172.18.192.0/18"

cluster_name        = "demo-EKS"
kubernetes_version  = "1.32"
cluster_role_name   = "demo-eks-cluster"
nodegroup_role_name = "demo-eks-nodegroup"
node_group_name     = "demo-NodeGroup"
node_desired_size   = 2
node_min_size       = 1
node_max_size       = 2
node_instance_type  = "t3.medium"

instance_type = "t2.nano"
ami           = "ami-01be94ae58414ab2e"
key_pair_name = "ec2key"
