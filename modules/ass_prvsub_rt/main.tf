#associate private subnet with private-RT

resource "aws_route_table_association" "pvt-subnet-rt" {
  subnet_id      = var.prv_subnet_id
  route_table_id = var.route_table_id
}