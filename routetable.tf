resource "aws_route_table" "public" {
  vpc_id = aws_vpc.devops.id
  tags = {
    "key" = "route table"
  }
}

resource "aws_route" "public" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = var.des-all
  gateway_id             = aws_internet_gateway.igw-test.id
}

resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.subnets[0].id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.devops.id

  tags = {
    "key" = "route table private"
  }
}

resource "aws_route" "private-natgw" {
  route_table_id         = aws_subnet.subnets[1].id
  destination_cidr_block = var.des-all
  nat_gateway_id         = aws_nat_gateway.gw.id
}

resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.subnets[1].id
  route_table_id = aws_route_table.private.id
}