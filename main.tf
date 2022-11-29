resource "aws_s3_bucket" "demo_s3_bucket" {
  bucket = "algodx-test-s3-bucket"

  tags = {
    Name = "algodx-test-s3-bucket"
  }
}

resource "aws_s3_bucket_acl" "acl" {
  bucket = aws_s3_bucket.demo_s3_bucket.id
  acl    = "private"
}
