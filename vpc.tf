resource "aws_vpc" "devops" {
  cidr_block = var.vpc-cidr

  tags = {
    "name" = "iti"
  }
}