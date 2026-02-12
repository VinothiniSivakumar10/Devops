#vpc variable values
vpc_cidr_block = "10.0.0.0/16"
instance_tenancy = "default"
vpc_name = "vinothini-dev_env-vpc"

#public subnet variable values
pub_sub_cidr_block =  "10.0.1.0/24"
pub_sub_az =  "ap-northeast-3a"
pub_sub_name = "vinothini-dev_env-pub-sub"

#private subnet variable values
prv_sub_cidr_block =  "10.0.2.0/24"
prv_sub_az =  "ap-northeast-3b"
prv_sub_name = "vinothini-dev_env-prv-sub"

#internet gateway variable values
internet_gt_name = "vinothini-igw"

#public route variable values
pub_route_cidr_block = "0.0.0.0/0"
pub_route_name = "vinothini-pub-RT"

#elasic ip variable values
elastic_ip_name = "vinothini-eip"

#nat gateway variable values
nat_gt_name = "vinothini-nat-gw"

#public route variable values
prv_route_cidr_block = "0.0.0.0/0"
prv_route_name = "vinothini-prt-RT"

#key pair variable values
key_name = "vinothini-key"
public_key =  "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDrHVbou7+Q4CeA9AC9ZYBTxy0Nsid2xqLfbbxe6huekyapYQ8Q1ZQK1k1/KuCm5193sVArcQYscVHmP1gRkIrRt0UUCCZJNPGpwT2D25RgpjRqplINBBsdy1WyqxuiOYvibo0zx7blziL+v778mVGyFp4Ocz4b5u/fdiZc9uJ5GWsUw0DqMlUuNdInTx9f30oqyEAVZYEm7JDjLpdXLeyDkfY5ldfh/yTur2fqdGndtgTYcdIYwiXY9KfRw7A9MZ5tn/3833Op8/xAjtC82iD9MX7TVF+JOaMFGnp2KlI6LQ2kCe9MWi9K+pKOBvtFC0TBFgUB091jtG5vVrTrPRpq2NPVjNJoFWAxLkz+xIj64IAePv7S0eUl4gcF2Xf7W7/PiyhB56QpHxbs7h10eDJwWkoXyTG+UXtnIDVeS1VLbd5VsylllL8qoyoEXxlLqlH1Uh2hsb2efKFYBAJY6TAC4P9fv8F9mJW2e9FFgmsOPA6K9vEZrSy41prQmz7WyIvNTCX3M0jbIkGd/35bNmVg4psgEuc2B8qwHM4JRSFr0G9snrIGHPwd5wW4J7cfa4B3Bn3Hyt6babfpRsJ4Ik3eCJ4CDV+hltI48hyOqlVSl62qSCGFf0HzY5YDtK8FClv2wdylmbV4HU7LT5GDjYuOTG5i23a7BmbWTquiKLa7hw== user@VinothiniSivakumar"

#security group variable value
sec_grp_name = "vino-sg"
sec_grp_des = "Allow TLS inbound traffic and all outbound traffic"
sec_grp_tag_name = "vino-sg"

#public EC2 instance variable values
pub_ec2_ami = "ami-0ef44b9f9f20f3e57"
pub_ec2_ins_type = "t3.micro"
pub_ec2_key_name = "vinothini-key"
pub_ec2_ass_ipaddr = true
pub_ec2_az = "ap-northeast-3a"
pub_ec2_count = 1
pub_ec2_tag_name = "vinothini-public-instance-dev_env"

#private EC2 instance variable values
prv_ec2_ami = "ami-0ef44b9f9f20f3e57"
prv_ec2_ins_type = "t3.micro"
prv_ec2_key_name = "vinothini-key"
prv_ec2_ass_ipaddr = false
prv_ec2_az = "ap-northeast-3b"
prv_ec2_count = 1
prv_ec2_tag_name = "vinothini-private-instance-dev_env"

#provider region
Dev_provider = "ap-northeast-3"