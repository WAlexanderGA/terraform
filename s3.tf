resource "aws_s3_bucket" "main" {
  bucket = "william.test"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}