output "pub_subnet_id"{
    description = "this is public subnet id"
    value= aws_subnet.main-subnet.id
}