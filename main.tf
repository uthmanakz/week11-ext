provider "aws" {
  region = "eu-west-2"
}


resource "aws_instance" "webnodes" {
  count         = "2"
  ami           = "ami-019374baf467d6601"
  instance_type = "t2.micro"
  key_name      = "simbababy"

  tags = {
    Name = "web-server-${count.index + 1}"
  }

}



output "public_ip_webnodes1" {
    value = aws_instance.webnodes.0.public_ip
}
output "public_ip_webnodes2" {
    value = aws_instance.webnodes.1.public_ip
}


