resource "aws_instance" "my-instance-public" {
  ami                         = var.ec2-ami
  instance_type               = var.instance_type
  user_data                   = file("install_apache.sh")
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.subnets[0].id
  vpc_security_group_ids      = [aws_security_group.demo-sg.id]
  key_name                    = "aws_keys_pairs"
  tags = {
    "name" = "public"
  }
}

resource "aws_instance" "my-instance-private" {
  ami           = var.ec2-ami
  instance_type = var.instance_type
  user_data     = file("install_apache.sh")
  # associate_public_ip_address = true
  subnet_id              = aws_subnet.subnets[1].id
  vpc_security_group_ids = [aws_security_group.demo-sg.id]
  key_name               = "aws_keys_pairs"
  tags = {
    "name" = "private"
  }
}

