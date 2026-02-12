output "eip_id"{
    description = "this is elastic ip id"
    value = aws_eip.main-eip.id
}