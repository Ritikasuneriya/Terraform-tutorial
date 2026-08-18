resource "aws_s3_bucket" "remote-backend" {
  bucket = "remote-backend-duckku"
  object_lock_enabled = true
  
  tags = {
    Name        = "remote-backend-duckku"
  }
}