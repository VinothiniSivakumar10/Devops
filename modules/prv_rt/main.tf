#private route table
resource "aws_route_table" "main-pvt-rt" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.prv_route_cidr_block
    gateway_id = var.gateway_id
  }

  tags = {
    Name = var.prv_route_name
  }
}