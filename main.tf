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

resource "postgresql_database" "my_db" {
  name              = "my_db"
  connection_limit  = -1
  allow_connections = true
}

resource "postgresql_database" "my_db_2" {
  name              = "my_db_2"
  connection_limit  = -1
  allow_connections = true
}
