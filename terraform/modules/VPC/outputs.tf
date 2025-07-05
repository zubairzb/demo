output "vpc_id" {
  value = aws_vpc.demo_VPC.id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.igw.id
}

output "public_subnet_ids" {
  value = [
    aws_subnet.public_subnet_1.id,
    aws_subnet.public_subnet_2.id
  ]
}

output "private_subnet_ids" {
  value = [
    aws_subnet.private_subnet_1.id,
    aws_subnet.private_subnet_2.id
  ]
}

output "public_route_table_id" {
  value = aws_route_table.public_route_table.id
}

output "private_route_table_id" {
  value = aws_route_table.private_route_table.id
}

output "public_route_table_association_ids" {
  value = [
    aws_route_table_association.public_1.id,
    aws_route_table_association.public_2.id
  ]
}

output "private_route_table_association_ids" {
  value = [
    aws_route_table_association.private_1.id,
    aws_route_table_association.private_2.id
  ]
}
