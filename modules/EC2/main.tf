provider "aws" {
  region = var.aws_region
}

data "aws_ami" "linux_latest" {
  most_recent = "true"

  filter {
    name   = "name"
    values = ["al2023-ami-2023*"] 
  }
}

resource "aws_instance" "example" {
  ami           = data.aws_ami.linux_latest.id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_pair_name

  tags = {
    Name = var.instance_name
  }
}
