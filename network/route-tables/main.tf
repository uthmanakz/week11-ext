resource "aws_route_table" "pub_rt" { #Route Table FOR PUBLIC SUBNETS
  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = data.terraform_remote_state.vpc.outputs.igw_id
  }
  tags = {
    Name = "PublicRouteTable"
  }
}

resource "aws_route_table" "priv_rt" { #ROUTE TABLE FOR PRIVATE SUBNETS
  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id

  tags = {
    Name = "PrivateRouteTable"
  }
}