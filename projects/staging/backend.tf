terraform {
  backend "s3" {
    bucket = "sandbox-terraform-state-sandbox-us-east-1"
    key    = "staging/terraform.tfstate"
    region = "us-east-1"
  }
}
