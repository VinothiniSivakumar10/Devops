#nat gateway
resource "aws_nat_gateway" "main-nat-gw" {
  allocation_id = var.allocation_id
  subnet_id     = var.subnet_id

  tags = {
    Name = var.nat_gt_name
  }

}