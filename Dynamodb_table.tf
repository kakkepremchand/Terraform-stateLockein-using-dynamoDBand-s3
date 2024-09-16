provider "aws" {
  region = "ap-southeast-2"
  
}


resource "aws_dynamodb_table" "state_lock_table" {
  name           = "table-nam-e"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}