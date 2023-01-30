resource "aws_internet_gateway" "igw-test" {
  vpc_id = aws_vpc.devops.id

  tags = {
    Name = "igw-test"
  }
}