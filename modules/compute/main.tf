resource "aws_instance" "nodes" {
  for_each = {for idx, subnet in var.subnet_id : idx => subnet} 
  ami           = "ami-019374baf467d6601"
  instance_type = "t2.micro"
  key_name      = "simbababy"
  subnet_id     = each.value 
  vpc_security_group_ids = var.sg_id

  tags = {
    Name = "${var.name}-${each.key + 1}"
  }

}


