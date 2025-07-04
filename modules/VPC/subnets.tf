# Private Subnets
resource "aws_subnet" "private_subnet_1" {
  vpc_id            = aws_vpc.demo_VPC.id
  cidr_block        = var.private_cidr_block_1
  availability_zone = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "private-subnet-1"
  }
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id            = aws_vpc.demo_VPC.id
  cidr_block        = var.private_cidr_block_2
  availability_zone = data.aws_availability_zones.available.names[1]

  tags = {
    Name = "private-subnet-2"
  }
}

resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.demo_VPC.id
  cidr_block              = var.public_cidr_block_1
  map_public_ip_on_launch = true
  availability_zone       = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "public-subnet-1"
  }
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.demo_VPC.id
  cidr_block              = var.public_cidr_block_2
  map_public_ip_on_launch = true
  availability_zone       = data.aws_availability_zones.available.names[1]

  tags = {
    Name = "public-subnet-2"
  }
}
