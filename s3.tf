resource "aws_s3_bucket" "dev4" {
  bucket = "my-bucket"
  acl    = "private"

  tags = {
    Maintainer = "elias@worker.com"
  }
}