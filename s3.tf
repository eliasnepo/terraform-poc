resource "aws_s3_bucket" "bucket-app" {
  bucket = "bucket-app-${var.env}"
  acl    = "private"

  tags = {
    Maintainer = "elias@worker.com"
  }
}