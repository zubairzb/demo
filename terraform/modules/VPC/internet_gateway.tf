resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.demo_VPC.id
}
