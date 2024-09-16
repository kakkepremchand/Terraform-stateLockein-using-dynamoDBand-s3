provider "aws" {
  region = "ap-southeast-2"
  
}


terraform {
  backend "s3" {
  bucket = "premchand-kakke-test-007"  
    dynamodb_table = "table-nam-e"
    region = "ap-southeast-2"
    key = "stag/ec2.tfstate"
    encrypt = true
  }
}