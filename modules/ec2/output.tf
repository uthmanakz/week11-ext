output "public_ip_1" {
    value = aws_instance.nodes.0.public_ip
}

output "public_ip_2" {
    value = aws_instance.nodes.1.public_ip
}
output "private_ip_1" {
    value = aws_instance.nodes.0.private_ip
}

output "private_ip_2" {
    value = aws_instance.nodes.1.private_ip
}

output "instance_id_1" {
    value = aws_instance.nodes.0.id
}

output "instance_id_2" {
    value = aws_instance.nodes.1.id
}