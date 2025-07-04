resource "aws_security_group" "souq_eks_sg" {
  vpc_id      = var.vpc_id
  name        = "souq-EKS_SG"
  description = "Security group for bastion host"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["172.18.0.0/16"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "souq-EKS_SG"
    Project = "Souq"
  }
}
