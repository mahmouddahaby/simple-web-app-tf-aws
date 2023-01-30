resource "aws_subnet" "subnets" {
  count      = length(var.subnets)
  vpc_id     = aws_vpc.devops.id
  cidr_block = var.sub-cidr[count.index]
  tags = {
    "name" = var.subnets[count.index]
  }

}



