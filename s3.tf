resource "aws_s3_bucket" "shipSafe_s3_bucket" {
  bucket = var.s3_bucket
  acl    = var.acl

  versioning {
    enabled = var.versioning
  }

  tags = var.tags
}
