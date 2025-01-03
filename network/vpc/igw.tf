resource "aws_internet_gateway" "igw" { #IGW FOR PUBLIC SUBNETS
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "IGW"
  }
}