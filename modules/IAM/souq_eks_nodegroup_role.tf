resource "aws_iam_role" "souq_eks_nodegroup" {
  name = var.nodegroup_role_name

  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Principal" : {
          "Service" : "ec2.amazonaws.com"
        },
        "Action" : "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "souq_eks_nodegroup_policy_attachment" {
  role       = aws_iam_role.souq_eks_nodegroup.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}

resource "aws_iam_role_policy_attachment" "souq_eks_nodegroup_worker_node_policy_attachment" {
  role       = aws_iam_role.souq_eks_nodegroup.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}

resource "aws_iam_role_policy_attachment" "souq_eks_nodegroup_ec2_full_access_attachment" {
  role       = aws_iam_role.souq_eks_nodegroup.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}
