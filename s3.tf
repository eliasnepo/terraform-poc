resource "aws_s3_bucket" "dev4" {
  bucket = "bucket-app-${var.env}"
  acl    = "private"

  tags = {
    Maintainer = "elias@worker.com"
  }
}