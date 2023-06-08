provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "digger-demo-staging-bucket"

  tags = {
    Name        = "digger-demo-staging-bucket"
    Environment = "staging"
    CreatedBy = "terraform"
  }
}

 resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
