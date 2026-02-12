#private subnet

resource "aws_subnet" "main-subnet-1" {
  vpc_id     = var.vpc_id
  cidr_block = var.prv_sub_cidr_block
  availability_zone = var.prv_sub_az

  tags = {
    Name = var.prv_sub_name
  }
}