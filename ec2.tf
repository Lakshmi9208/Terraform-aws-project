resource "aws_instance" "web" {
  ami           = "ami-0d176f79571d18a8f"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = "Terraform-Web-Server"
  }
}
