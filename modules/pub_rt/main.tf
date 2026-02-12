#public route table
resource "aws_route_table" "main-rt" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.pub_route_cidr_block
    gateway_id = var.gateway_id
  }

  tags = {
    Name = var.pub_route_name
  }
}