# Provision a web server instance using Ubuntu on a
# t2.micro node with an AWS Tag naming it "web-server"

# Create web server

provider "aws" {

    region = "ap-south-1"
  
}
resource "aws_instance" "myInstance" {
  ami           = "ami-073c8c0760395aab8"
  security_groups = ["${aws_security_group.ssh.name}"]
  key_name = "admin"
  availability_zone = "ap-south-1a"
  instance_type = "t2.micro"
  user_data = "${file("script.sh")}"

  tags = {
        Name = "webserver"
  }

}


resource "aws_security_group" "ssh" {
  name        = "ssh"
  description = "allow public website to be available from anywhere"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}
  
output "DNS" {
  value = aws_instance.myInstance.public_dns
}

