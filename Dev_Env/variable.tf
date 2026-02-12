#variables for vpc block
variable "vpc_cidr_block" {
  description = "this ia vpc cidr block"
}
variable "instance_tenancy" {
  description="this is vpc instance tendancy"
}
variable "vpc_name" {
  description = "this the vpc name"
}

#Variables for public subnet
variable "pub_sub_cidr_block" {
  description = "this is public subnet cidr block"
}
variable "pub_sub_az" {
  description = "this is public subnet available zone"
}
variable "pub_sub_name" {
  description = "this is public subnet name"
}

#Variables for private subnet
variable "prv_sub_cidr_block" {
  description = "this is private subnet cidr block"
}
variable "prv_sub_az" {
  description = "this is private subnet available zone"
}
variable "prv_sub_name" {
  description = "this is private subnet name"
}

#Variable for internet gateway

variable "internet_gt_name" {
  description = "this is internet gateway name"
}

#Variable for public route table
variable "pub_route_cidr_block" {
  description = "this is public route cidr block"
}
variable "pub_route_name" {
  description = "this is public route name"
}

# variables for elastic ip
variable "elastic_ip_name" {
  description = "this is elastic ip name"
}

#variables for nat gateway
variable "nat_gt_name" {
  description = "this is nat gateway name"
}

#Variable for private route table
variable "prv_route_cidr_block" {
  description = "this is private route cidr block"
}

variable "prv_route_name" {
  description = "this is private route name"
}

#variables for generate key pair
variable "key_name" {
  description = "this is key pair name"
}
variable "public_key" {
  description = "this is key pair public key"
}

#variables for create security group
variable "sec_grp_name" {
  description = "this is security group name"
}
variable "sec_grp_des" {
  description = "this is for security group description"
}
variable "sec_grp_tag_name" {
  description = "this is security group tag name"
}

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
variable "Dev_provider" {
  description = "this is provider for region"
}
