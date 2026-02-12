

module "vpc"{
    source="../Modules/vpc"
    vpc_cidr_block=var.vpc_cidr_block
    instance_tenancy=var.instance_tenancy
    vpc_name=var.vpc_name
}

module "pub_subnet"{
    source = "../modules/pub_subnet"
    pub_sub_cidr_block=var.pub_sub_cidr_block
    pub_sub_az=var.pub_sub_az
    pub_sub_name=var.pub_sub_name
    vpc_id = module.vpc.vpc_id
}

module "ass_pubsub_rt" {
  source = "../modules/ass_pubsub_rt"
  pub_subnet_id = module.pub_subnet.pub_subnet_id
  route_table_id= module.pub_rt.pub_rt
}

module "prv_subnet" {
    source = "../modules/prv_subnet"
    prv_sub_cidr_block=var.prv_sub_cidr_block
    prv_sub_az=var.prv_sub_az
    prv_sub_name=var.prv_sub_name
    vpc_id=module.vpc.vpc_id
}
module "ass_prvsub_rt" {
  source = "../modules/ass_prvsub_rt"
  prv_subnet_id = module.prv_subnet.prv_subnet_id
  route_table_id= module.prv_rt.pvt_rt_id
}

module "igw" {
  source = "../modules/igw"
  internet_gt_name=var.internet_gt_name
  vpc_id = module.vpc.vpc_id
}
module "pub_rt" {
  source = "../modules/pub_rt"
  pub_route_cidr_block=var.pub_route_cidr_block
  pub_route_name=var.pub_route_name
  vpc_id = module.vpc.vpc_id
  gateway_id=module.igw.igw_id
}
module "eip" {
  source= "../modules/eip" 
  elastic_ip_name=var.elastic_ip_name
}
module "nat_gw"{
    source = "../modules/nat_gw"
    nat_gt_name=var.nat_gt_name
    allocation_id = module.eip.eip_id
    subnet_id = module.pub_subnet.pub_subnet_id
}
module "prv_rt" {
  source = "../modules/prv_rt"
  prv_route_cidr_block=var.prv_route_cidr_block
  prv_route_name=var.prv_route_name
  vpc_id = module.vpc.vpc_id
  gateway_id = module.nat_gw.nat_gw_id
}
module "keypair" {
  source = "../modules/keypair"
  key_name=var.key_name
  public_key=var.public_key
}
module "scgrp" {
  source = "../modules/scgrp"
  sec_grp_name=var.sec_grp_name
  sec_grp_des=var.sec_grp_des
  sec_grp_tag_name=var.sec_grp_tag_name
  vpc_id = module.vpc.vpc_id
}
module "pub_ec2" {
  source = "../modules/pub_ec2"
  pub_ec2_ami=var.pub_ec2_ami
  pub_ec2_ins_type=var.pub_ec2_ins_type
  pub_ec2_key_name=var.pub_ec2_key_name
  pub_ec2_ass_ipaddr=var.pub_ec2_ass_ipaddr
  pub_ec2_az=var.pub_ec2_az
  pub_ec2_count=var.pub_ec2_count
  pub_ec2_tag_name=var.pub_ec2_tag_name
  pub_subnet_id = module.pub_subnet.pub_subnet_id
  vpc_security_group_ids=module.scgrp.scgrp_id

}
module "pvt_ec2" {
  source = "../modules/pvt_ec2"
  prv_ec2_ami=var.prv_ec2_ami
  prv_ec2_ins_type=var.prv_ec2_ins_type
  prv_ec2_key_name=var.prv_ec2_key_name
  prv_ec2_ass_ipaddr=var.prv_ec2_ass_ipaddr
  prv_ec2_az=var.prv_ec2_az
  prv_ec2_count=var.prv_ec2_count
  prv_ec2_tag_name=var.prv_ec2_tag_name
  pvt_subnet_id=module.prv_subnet.prv_subnet_id
  vpc_security_group_ids=module.scgrp.scgrp_id

}