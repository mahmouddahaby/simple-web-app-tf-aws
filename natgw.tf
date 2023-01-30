resource "aws_nat_gateway" "gw" {

  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.subnets[0].id
}