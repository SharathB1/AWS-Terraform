provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_ownership_controls" "examplecontrols" {
  bucket = aws_s3_bucket.example.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "myacl" {
  depends_on = [aws_s3_bucket_ownership_controls.examplecontrols]
  bucket     = aws_s3_bucket.example.id
  acl        = var.bucket_acl
}