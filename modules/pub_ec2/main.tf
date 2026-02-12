#create public EC2 instance
resource "aws_instance" "public-instance" {
  ami           = var.pub_ec2_ami
  instance_type = var.pub_ec2_ins_type
  key_name = var.pub_ec2_key_name
  vpc_security_group_ids = [var.vpc_security_group_ids]
  subnet_id = var.pub_subnet_id
  associate_public_ip_address = var.pub_ec2_ass_ipaddr
  availability_zone = var.pub_ec2_az
  count=var.pub_ec2_count

  tags = {
    Name = var.pub_ec2_tag_name
  }
}