output "pvt_ec2_id"{
    description = "this is private ec2 instance id"
    value = aws_instance.private-instance.id
}