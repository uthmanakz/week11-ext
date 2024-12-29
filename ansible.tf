resource "aws_instance" "ansible" {

  ami           = "ami-019374baf467d6601"
  instance_type = "t2.micro"
  key_name      = "simbababy"

  tags = {
    Name = "Ansible"
  }

}

output "ansible_public_ip" {
value = aws_instance.ansible.public_ip
}