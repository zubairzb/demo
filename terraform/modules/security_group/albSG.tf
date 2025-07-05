resource "aws_security_group" "souq_alb_sg" {
  vpc_id      = var.vpc_id
  name        = "souq-alb_SG"
  description = "Security group for bastion host"

  ingress {
    from_port   = 0
    to_port     = 443
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
    Name    = "souq-alb_SG"
    Project = "Souq"
  }
}
