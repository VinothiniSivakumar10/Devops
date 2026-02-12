#variables for create private EC2 instance
variable "prv_ec2_ami" {
  description = "this is private EC2 instance ami"
}
variable "prv_ec2_ins_type" {
  description = "this is private EC2 instance type"
}
variable "prv_ec2_key_name" {
  description = "this is private EC2 key name"
}

variable "prv_ec2_ass_ipaddr" {
  description = "this is private EC2 associate ip address"
}
variable "prv_ec2_az" {
  description = "this is private EC2 availability zone"
}
variable "prv_ec2_count" {
  description = "this is private Ec2 count number of instance"
}
variable "prv_ec2_tag_name" {
  description = "this is private EC2 tag name"
}
variable "pvt_subnet_id" {
  description = "this is private subnet id"
}
variable "vpc_security_group_ids" {
  description = "this is vpc security group id"
}