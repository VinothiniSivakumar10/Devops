output "pub_ec2_id"{
    description = "this is public ec2 instance id"
    value = aws_instance.public-instance[0].id    
}