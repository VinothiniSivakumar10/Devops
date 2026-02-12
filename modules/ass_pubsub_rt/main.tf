#associate public subnet with RT
resource "aws_route_table_association" "subnet-rt" {
  subnet_id      = var.pub_subnet_id
  route_table_id = var.route_table_id
}