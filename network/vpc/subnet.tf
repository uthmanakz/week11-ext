resource "aws_subnet" "pubsub_2a" { #PUBLIC SUBNET 2A
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "eu-west-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "PUBLIC-SUBNET-A"
  }
}

resource "aws_subnet" "pubsub_2b" { #PUBLIC SUBNET 2B
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "eu-west-2b"
  map_public_ip_on_launch = true

  tags = {
    Name = "PUBLIC-SUBNET-B"
  }
}

resource "aws_subnet" "privsub_2a" { #PRIVATE SUBNET 2A
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "eu-west-2a"

  tags = {
    Name = "PRIVATE-SUBNET-A"
  }
}

resource "aws_subnet" "privsub_2b" { #PRIVATE SUBNET 2B
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "eu-west-2b"

  tags = {
    Name = "PRIVATE-SUBNET-B"
  }
}