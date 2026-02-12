#variables for create public EC2 instance
variable "pub_ec2_ami" {
  description = "this is public EC2 instance ami"
}
variable "pub_ec2_ins_type" {
  description = "this is public EC2 instance type"
}
variable "pub_ec2_key_name" {
  description = "this is public EC2 key name"
}

variable "pub_ec2_ass_ipaddr" {
  description = "this is public EC2 associate ip address"
}
variable "pub_ec2_az" {
  description = "this is public EC2 availability zone"
}
variable "pub_ec2_count" {
  description = "this is public Ec2 count number of instance"
}
variable "pub_ec2_tag_name" {
  description = "this is public EC2 tag name"
}
variable "pub_subnet_id" {
  description = "this is public subnet id"
}
variable "vpc_security_group_ids" {
  description = "this is vpc security group id"
}