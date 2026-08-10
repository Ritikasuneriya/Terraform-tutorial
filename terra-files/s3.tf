provider aws {
    region = "us-east-1"
}

resource "aws_s3_bucket" "my-s3" {
    bucket = "duckku-the-s3"
    
}
    