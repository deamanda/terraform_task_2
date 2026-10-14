data "aws_vpc" "vpc" {
  filter {
    name   = "tag:Name"
    values = ["cmtr-otuokx4e-vpc"]
  }
}

data "aws_subnets" "subnet" {
  filter {
    name   = "tag:Name"
    values = ["*public*"]
  }
}

data "aws_security_group" "security_group" {
  filter {
    name   = "tag:Name"
    values = ["cmtr-otuokx4e-sg"]
  }
}

resource "aws_instance" "example" {
  ami             = "ami-042d7899818bea126"
  instance_type   = "t3.micro"
  security_groups = [data.aws_security_group.security_group.id]
  subnet_id       = data.aws_subnets.subnet.ids[0]
  key_name        = aws_key_pair.cmtr-otuokx4e-keypair.id

  tags = {
    Project = "epam-tf-lab"
    ID      = "cmtr-otuokx4e"
    Name    = "cmtr-otuokx4e-ec2"
  }
}