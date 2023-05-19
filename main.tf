resource "aws_instance" "ubuntu" {
  ami           = "ami-0ec7f9846da6b0f61"
  instance_type = "t2.micro"

  tags = {
    Name = "server_1"
  }
}

resource "aws_instance" "rhel" {
  ami           = "ami-08d9bb4bfe39be5c2"
  instance_type = "t2.micro"
  provider      = aws.london

  tags = {
    Name = "server_2"
  }
}