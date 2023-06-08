resource "aws_s3_bucket" "bucket" {
  bucket = "digger-demo-staging-bucket"

  tags = {
    Name        = "digger-demo-staging-bucket"
    Environment = "staging"
  }
}