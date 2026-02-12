#create private EC2 instance
resource "aws_instance" "private-instance" {
  ami           = var.prv_ec2_ami
  instance_type = var.prv_ec2_ins_type
  key_name = var.prv_ec2_key_name
  vpc_security_group_ids = [ var.vpc_security_group_ids]
  subnet_id = var.pvt_subnet_id
  associate_public_ip_address = var.prv_ec2_ass_ipaddr
  availability_zone =var.prv_ec2_az

  tags = {
    Name = var.prv_ec2_tag_name
  }
}