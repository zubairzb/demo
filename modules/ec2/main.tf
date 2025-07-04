resource "aws_instance" "bastion_host" {
  ami                         = var.ami
  instance_type               = var.instance_type
  associate_public_ip_address = true
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.security_group_ids
  key_name                    = var.key_pair_name
  root_block_device {
    volume_size = 10
  }

  tags = {
    Name    = "bastian-host"
    Project = "Souq"
  }
}
