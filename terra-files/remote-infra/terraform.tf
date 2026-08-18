
terraform {
  backend "s3" {
    bucket = "remote-backend-duckku"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "tfstate-lock"
  }
}

