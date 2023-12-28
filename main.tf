provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "hello-world" {
  ami = "ami-0dfa284c9d7b2adad"
  instance_type = "t2.micro"
}