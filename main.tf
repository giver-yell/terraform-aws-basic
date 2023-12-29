provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "hello-world" {
  ami = "ami-0dfa284c9d7b2adad"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }

  user_data = <<EOF
#!/bin/bash
amazon-linux-extras install -y nginx1.24
systemctl start nginx
EOF
}