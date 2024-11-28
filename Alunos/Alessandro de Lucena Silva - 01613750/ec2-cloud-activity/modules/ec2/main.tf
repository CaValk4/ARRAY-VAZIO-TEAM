data "aws_ami" "amz2_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.20241113.1-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }


  owners = ["amazon"]
}

resource "aws_instance" "uninassau_ec2" {
  ami           = data.aws_ami.amz2_linux.id
  instance_type = var.ec2_instance_type
  key_name =  var.ssh_key
  subnet_id = var.nassau_subnet_public_id
  vpc_security_group_ids = [var.security_group_allow_http_ssh_id]
  associate_public_ip_address = true

  tags = {
    Name = "uninassau-aula"
 # Insira o nome da instância de sua preferência.
  }
}

