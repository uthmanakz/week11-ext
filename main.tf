provider "aws" {
  region = "eu-west-2"
}


resource "aws_instance" "webnodes" {
  count         = "2"
  ami           = "ami-019374baf467d6601"
  instance_type = "t2.micro"
  key_name      = "simbababy"

  tags = {
    Nmae = "web-server-${count.index + 1}"
  }

}

resource "null_resource" "ansible-inventory" {
  depends_on = [aws_instance.webnodes]

  provisioner "local-exec" {
    command = <<EOF
        echo "[web-server]" > ansible-CM/inventory.ini
        echo "${join("\n", aws_instance.webnodes.*.public_ip)}" >> ansible-CM/inventory.ini
        EOF
  }


}

