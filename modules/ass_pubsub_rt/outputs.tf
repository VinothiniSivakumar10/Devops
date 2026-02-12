output "ass_pubsub_rt_id"{
    description = "this is public subnet rt id"
    value = aws_route_table_association.subnet-rt.id
}