provider "aws" {
  region = "eu-west-2"
}
module "python" {
  source    = "../modules/ec2"
  name      = "PYTHON"
  subnet_id = [data.terraform_remote_state.vpc.outputs.pubsub_2a_id, data.terraform_remote_state.vpc.outputs.pubsub_2b_id]
  sg_id     = [aws_security_group.python_sg.id]
}

module "nginx" {
  source    = "../modules/ec2"
  name      = "NGINX"
  subnet_id = [data.terraform_remote_state.vpc.outputs.pubsub_2a_id, data.terraform_remote_state.vpc.outputs.pubsub_2b_id]
  sg_id     = [aws_security_group.nginx_sg.id]
}

resource "aws_instance" "ansible" {

  ami           = "ami-019374baf467d6601"
  instance_type = "t2.micro"
  key_name      = "simbababy"
  subnet_id = data.terraform_remote_state.vpc.outputs.pubsub_2a_id
  vpc_security_group_ids   = [aws_security_group.ansible_sg.id]

  tags = {
    Name = "ANSIBLE"
  }
}








