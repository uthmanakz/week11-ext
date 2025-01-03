output "vpc_id" {
    value = aws_vpc.vpc.id
}

output "igw_id" {
    value  = aws_internet_gateway.igw.id
}

output "pubsub_2a_id" {
    value  = aws_subnet.pubsub_2a.id
}

output "pubsub_2b_id" {
    value  = aws_subnet.pubsub_2b.id
}

output "privsub_2a_id" {
    value  = aws_subnet.privsub_2a.id
}

output "privsub_2b_id" {
    value  = aws_subnet.privsub_2b.id
}

