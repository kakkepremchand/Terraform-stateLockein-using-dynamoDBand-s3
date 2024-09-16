provider "aws" {
  region = "ap-southeast-2"
  
}

resource "aws_instance" "terraform-state-test" {
  ami = "ami-0474411b350de35fb"
  instance_type = "t2.micro"
  key_name = "sydney"
  tags = {
    Name = "terraform-state-test"
  }
}

