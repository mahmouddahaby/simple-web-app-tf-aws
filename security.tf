resource "aws_security_group" "demo-sg" {
  name        = "sec-grp"
  description = "Allow HTTP , SSH traffic and HTTPS via Terraform"
  vpc_id      = aws_vpc.devops.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.des-all]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.des-all]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.des-all]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.des-all]
  }
}