# Configure AWS provider
provider "aws" {
  region = "us-west-2"
}

# S3 bucket test-bucket creation
resource "aws_s3_bucket" "my_bucket" {
  bucket = "test-bucket"
}

# test1.txt file creation whit timestamp
resource "aws_s3_bucket_object" "test1" {
  bucket = aws_s3_bucket.my_bucket.id
  key    = "test1.txt"
  content = "${timestamp()}"
}

#  test2.txt file creation whit timestamp
resource "aws_s3_bucket_object" "test2" {
  bucket = aws_s3_bucket.my_bucket.id
  key    = "test2.txt"
  content = "${timestamp()}"
}
