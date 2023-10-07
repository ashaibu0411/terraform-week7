##EC2 instance
resource "aws_instance" "ec2-demo" {
    ami = "ami-067d1e60475437da2"
    vpc_security_group_ids = [aws_security_group.sg-demo.id]
  instance_type = "t2.micro"
  key_name = "ec2-demo"
  subnet_id = aws_subnet.public_subnet1.id
  user_data = file("install.sh")
  tags = {
    name = "Terraform instance"
    env = "Dev"

  }
}