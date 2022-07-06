resource "aws_s3_bucket" "bucket-app" {
  bucket = "bucket-app1-${aws_caller_identity.current.account_id}-${var.env}"
  acl    = "private"

  tags = {
    Maintainer = "elias@worker.com"
  }
}