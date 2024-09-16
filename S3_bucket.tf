provider "aws" {
  region = "ap-southeast-2"
  
}


resource "aws_s3_bucket" "terraform-state-unique-bucket" {
  bucket = "premchand-kakke-test-007"
  force_destroy = true
}

resource "aws_s3_bucket_versioning" "terraform-state-file" {
  bucket = aws_s3_bucket.premchand-kakke-test-007.id
  versioning_configuration {
    status = "Enabled"
  }
}
