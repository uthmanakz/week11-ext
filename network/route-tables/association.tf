resource "aws_route_table_association" "pub_rta_a" { #Route Table Association FOR PUBLIC SUBNET 2A
  subnet_id      = data.terraform_remote_state.vpc.outputs.pubsub_2a_id
  route_table_id = aws_route_table.pub_rt.id
}

resource "aws_route_table_association" "pub_rta_b" { #Route Table Association FOR PUBLIC SUBNET 2B
  subnet_id      = data.terraform_remote_state.vpc.outputs.pubsub_2b_id
  route_table_id = aws_route_table.pub_rt.id
}

resource "aws_route_table_association" "priv_rta_a" { #Route Table Association FOR PRIVATE SUBNET 2A
  subnet_id      = data.terraform_remote_state.vpc.outputs.privsub_2a_id
  route_table_id = aws_route_table.priv_rt.id
}

resource "aws_route_table_association" "priv_rta_b" { #Route Table Association FOR PRIVATE SUBNET 2B
  subnet_id      = data.terraform_remote_state.vpc.outputs.privsub_2b_id
  route_table_id = aws_route_table.priv_rt.id
}