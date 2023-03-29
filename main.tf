#Configure the AWS Provider
provider "aws" {
    region = "us-east-1"
    profile = "jamesosorio"
}

resource "aws_s3_bucket" "bucket-01" {
  bucket = "jop-bucket-202303"

  tags = {
    Name        = "jop-bucket-202303"
    Environment = "qa"
  }
}

resource "aws_s3_bucket_acl" "bucket-01-acl" {
  bucket = aws_s3_bucket.bucket-01.id
  acl    = "private"
}