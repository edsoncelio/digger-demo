resource "aws_s3_bucket" "bucket" {
  bucket = "digger-demo-prod-bucket"

  tags = {
    Name        = "digger-demo-prod-bucket"
    Environment = "prod"
  }
}