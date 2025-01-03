/* output "ansible" {
value = aws_instance.ansible.public_ip
}

output "webnode1" {
    value = aws_instance.webnodes.0.public_ip
}
output "webnode2" {
    value = aws_instance.webnodes.1.public_ip
}

output "python" {
    value = aws_instance.python.public_ip
} */

output "PYTHON-1" {
  value = module.python.private_ip_1
}

output "PYTHON-2" {
  value = module.python.private_ip_2
}

output "NGINX-1" {
  value = module.nginx.public_ip_1
}

output "NGINX-2" {
  value = module.nginx.public_ip_2
}
output "ANSIBLE" {
  value = aws_instance.ansible.public_ip
}
