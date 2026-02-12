resource "aws_s3_bucket" "example" {
  bucket = "vinothini-dev-s3-bucket"

  tags = {
    Name        = "vinothini-dev-s3-bucket"
    Environment = "Dev"
  }
}