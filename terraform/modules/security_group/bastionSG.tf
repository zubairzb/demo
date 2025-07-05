resource "aws_security_group" "souq_bastion_sg" {
  vpc_id      = var.vpc_id
  name        = "souq-bh_SG"
  description = "Security group for bastion host"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "souq-bh_SG"
    Project = "Souq"
  }
}
