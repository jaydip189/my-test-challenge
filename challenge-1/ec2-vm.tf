#EC2 Instance
resource "aws_instance" "webserver1" {
  ami                    = "ami-0a23ccb2cdd9286bb"
  instance_type          = "t2.micro"
  availability_zone      = "ap-south-1a"
  vpc_security_group_ids = [aws_security_group.webserver-sg.id]
  subnet_id              = aws_subnet.app-subnet-1.id
  user_data = "${file("hello.sh")}"

  tags = {
    Name = "Web Server"
  }

}

resource "aws_instance" "webserver2" {
  ami                    = "ami-0a23ccb2cdd9286bb"
  instance_type          = "t2.micro"
  availability_zone      = "ap-south-1b"
  vpc_security_group_ids = [aws_security_group.webserver-sg.id]
  subnet_id              = aws_subnet.app-subnet-2.id
  user_data = "${file("hello.sh")}"

  tags = {
    Name = "Web Server"
  }

}

