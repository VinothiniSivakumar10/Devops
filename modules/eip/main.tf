#elastic ip
resource "aws_eip" "main-eip" {
  tags = {
    Name = var.elastic_ip_name
  }
}