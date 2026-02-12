output "ass_prvsub_rt_id"{
    description = "this is private subnet rt id"
    value = aws_route_table_association.pvt-subnet-rt.id
}